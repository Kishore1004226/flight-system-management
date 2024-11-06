import pymysql
import random
from random import randint
import string
            #connections
def connectivity():
    try:
        return pymysql.connect(host="localhost",user="root",password="kish",port=3306,database="tbs")        
    except Exception as e:
        print("Not connected")
        print(e)
        
        # flight booking
def flight_booking():
    try:
        l=0
        print("\n")
        print("             Flight Detials!")
        while(l<3):
            print("[Chennai, Bhopal, Delhi, Indore, Hyderabad,  bangaluru, Mumbai]")
            source=input("Source:   ").strip().lower().replace(" ", "")
            destination=input("Destination: ").strip().lower().replace(" ", "")
            query=f"SELECT * FROM flight_table WHERE (source)='{source}'AND destination='{destination}'"
            con= connectivity()
            cr=con.cursor()
            cr.execute(query)
            if cr.rowcount!=0:
                print("flight_no","source","   Destination","  Dpt","   Arrival","  Economy"," Business","First class\n")
                for i in cr:
                    print(i,"\n")
                print(f"  Booking for  {source}--->{destination}\n")

                break    
            else:
                l=l+1
                print("-----> No data found <-----")
    except Exception as e:
        print("Error")
        print(e)
    finally:
            con.close()
            
                # generate booking code
def generate_booking_code(length=6):
    letters_and_digits = string.ascii_uppercase + string.digits
    return ''.join(random.choice(letters_and_digits) for i in range(length))

                # booking
def booking():
    try:
        flight_number = input("Enter the flight Number:")
        con = connectivity()
        cr = con.cursor()
        query = f"SELECT flight_id FROM flight_table WHERE flight_id = {flight_number}"
        cr.execute(query)
        result = cr.fetchall()
        if result:
            con = connectivity()
            cr = con.cursor()
            query = f"SELECT flight_id, source, destination, departure, arrival FROM flight_table WHERE flight_id={flight_number}"
            cr.execute(query)
            result = cr.fetchall()
            for i in result:
                print(f"\nFlight Number:    {i[0]}\nSource:           {i[1]}\nDestination:      {i[2]}\nDeparture:         {i[3]}\nArrival:           {i[4]}")
        else:
            print("Flight number is incorrect.")
            return booking()
        query = f"SELECT flight_id FROM flight_table WHERE flight_id = {flight_number}"
        cr.execute(query)
        result = cr.fetchone()
        attempts_2 = 0
        while attempts_2 < 3:
            try:
                if result:
                    print("------>  Select flight class  <------")
                    flight_class = input("    1.Economy\n    2.Business\n    3.First class\nselect any (1/2/3):")
                    if flight_class == "1":
                        query = f"SELECT price_eco FROM flight_table WHERE flight_id = {flight_number};"
                        break
                    elif flight_class == "2":
                        query = f"SELECT price_bus FROM flight_table WHERE flight_id = {flight_number};"
                        break
                    elif flight_class == "3":
                        query = f"SELECT price_fc FROM flight_table WHERE flight_id = {flight_number};"
                        break
                    else:
                        print("         ...Invalid choice...")
            except ValueError:
                print("Invalid input. Please enter a valid number.")
                attempts += 1
        else:
            print("Too many invalid attempts. Exiting.")
            booking()
            query = None
        if query:
            cr.execute(query)
            price = cr.fetchone()
            if price:
                print(f"\n          The price is: {price[0]}\n")
            else:
                print("Price not found.")
        else:
            print("         ....Incorrect Flight Number....")
            booking()
        while True:
            num_ticket=int(input("Number of ticket(max 6):"))
            if num_ticket>0 and num_ticket<=6:
                attempts = 0
                while attempts < num_ticket:
                    print(f"     =========   Passenger Details {attempts+1}  =========")
                    passenger_name = input("Passenger name: ").lower()
                    # Validate gender input with a maximum of 2 attempts
                    attempts_1 = 0
                    while attempts < 7:
                        passenger_gender = input("Passenger gender (Male or Female): ").lower()
                        if passenger_gender in ['male', 'female']:
                            break
                        else:
                            print("Invalid input. Please enter 'Male' or 'Female'.")
                        attempts_1 += 1
                    else:
                        print("Too many invalid attempts. Exiting.")
                        booking()

                    # Validate age input with a maximum of 2 attempts
                    attempts_2 = 0
                    while attempts_2 < 7:
                        try:
                            passenger_age = int(input("Age: "))
                            if passenger_age > 0:
                                break
                            else:
                                print("Age must be a positive number.")
                                attempts_2 += 1
                        except ValueError:
                            print("Invalid input. Please enter a valid number.")
                            attempts += 1
                    else:
                        print("Too many invalid attempts. Exiting.")
                        booking()
                    booking_code = generate_booking_code()
                    con = connectivity()
                    cr = con.cursor()
                    # Insert the booking details into the database
                    query = f"INSERT INTO booking_table (p_name, f_num, p_gender, p_age, p_code) VALUES ('{passenger_name}', '{flight_number}', '{passenger_gender}', {passenger_age}, '{booking_code}')"
                    cr.execute(query)
                    con.commit()
                    print(f"Booking successfull!! Your booking ID  ------------> {booking_code}  <-------------   Remember this booking code ")
                    attempts += 1
                if num_ticket==attempts:
                    return
            else:
                print("Maximum ticket only 6... ")
                break
    except Exception as e:
        print("Error")
        print(e)