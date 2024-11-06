import pymysql
import random
from random import randint
            #connections
def connectivity():
    try:
        return pymysql.connect(host="localhost",user="root",password="kish",port=3306,database="tbs")        
    except Exception as e:
        print("Not connected")
        print(e)
def get_ticket_details():
    try:
        booking_ID=input("Enter your booking ID: ").strip().lower().replace(" ", "")
        con = connectivity()
        cr = con.cursor()
        query = f"SELECT p_code FROM booking_table WHERE p_code = '{booking_ID}'"
        cr.execute(query)
        result = cr.fetchall()
        if result:
            con = connectivity()
            cr = con.cursor()
            query = f"SELECT p_name, p_age, p_gender,f_num FROM booking_table WHERE p_code='{booking_ID}'"
            cr.execute(query)
            result = cr.fetchall()
            for i in result:
                print(f"\nPassenger name:    {i[0]}\nAge:               {i[1]}\nGender:            {i[2]}")
            con = connectivity()
            cr = con.cursor()
            query = f"SELECT flight_id FROM flight_table WHERE flight_id = {i[3]}"
            cr.execute(query)
            result = cr.fetchall()
            if result:
                con = connectivity()
                cr = con.cursor()
                query = f"SELECT flight_id, source, destination, departure, arrival FROM flight_table WHERE flight_id={i[3]}"
                cr.execute(query)
                result = cr.fetchall()
                for i in result:
                    print(f"Flight Number:     {i[0]}\nSource:            {i[1]}\nDestination:       {i[2]}\nDeparture:         {i[3]}\nArrival:           {i[4]}")

        else:
            print("Booking ID is incorrect.")
            return get_ticket_details()
            
            
        con.close()
        return 
    except Exception as e:
        print("Error")
        print(e)

