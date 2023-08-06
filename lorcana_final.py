from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
import tweet_msg as text_notification
import pickle
import datetime as datetime
import mysql.connector
import utils_lorcana
from utils_lorcana import connect_to_database
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# This is all of the database stuff
db_connection, cursor = connect_to_database()
rows = utils_lorcana.fetch_events_to_update(cursor)

now = datetime.datetime.today()
dt_string = now.strftime("%m/%d/%Y %H:%M:%S")
print("Lorcana started at " + dt_string + "")

s = Service(executable_path="/usr/lib/chromium-browser/chromedriver")
options = utils_lorcana.chrome_options()
driver = webdriver.Chrome(service=s, options=options)

driver.get("https://www.gencon.com/login")

cookies = pickle.load(open("/home/megan/Documents/Python/lorcana/cookies.pkl", "rb"))
for cookie in cookies:
    driver.add_cookie(cookie)
driver.refresh()

has_ticket = False

for row in rows:
    url, last_tweet_time, event_time_db, isPastEventDB, title_event = row
    
    # Checks event time. If 5 minutes or less to the event, it gets marked as a 1 to be excluded moving forward.
    if (event_time_db - datetime.datetime.now()).total_seconds() <= 300:
        utils_lorcana.update_event_status(cursor, db_connection, url, 1)
    else:
        driver.get(url)
        WebDriverWait(driver, 1).until(EC.presence_of_element_located((By.XPATH,"//div[contains(@class, 'page-title')]",)))        
        available_tickets = driver.find_element(By.XPATH,".//div[contains(@id, 'event_detail_ticket_purchase')]//following::p[1]",).text
        formatted_ticket_amount = int(available_tickets.replace("Available Tickets: ", "").strip())
      
        event_date = event_time_db.strftime("%A %-I:%M %p EDT")
       
        if formatted_ticket_amount > 0:
            has_ticket = True
            print("IT'S GOT TICKETS")
            if (last_tweet_time is None or (datetime.datetime.now() - last_tweet_time).total_seconds() >= 1800):

                tweet_message = (str(formatted_ticket_amount) + " available: " + title_event.title())
                
                print(tweet_message) # This prints to a log file so that I can monitor for errors and such
                type_email = "tickets"
                text_notification.send_email(str(event_date), title_event.title(), str(formatted_ticket_amount), url, type_email,)

                # Update the last tweet time in the database
                utils_lorcana.update_last_tweet_time(cursor, db_connection, url)

now = datetime.datetime.today()
dt_string = now.strftime("%m/%d/%Y %H:%M:%S")
print("Script ended at " + dt_string + "")
print("------------------------------")

cursor.close()
db_connection.close()
driver.quit()
