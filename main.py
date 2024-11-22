from login_or_signup import*
from flight_booking import*
from get_ticket_details import*
import sys

try:
    def go_back_1():
        print("     1) Book a Ticket                            2) Go Back                        3)Exit")
        chr=int(input("\n                           Enter your choice: "))
        if (chr==1):
            booking()
        elif(chr==2):
            main_menu()
        elif(chr==3):
            exit_program()
        else:
            print("                                invalid choices....")
        
    def go_back_2():
        print("\n     1) View Ticket                            2) Go Back                        3)Exit")
        chr=int(input("                           Enter your choice: "))
        if (chr==1):
            get_ticket_details()
        elif(chr==2):
            main_menu()
        elif(chr==3):
            exit_program()
        else:
            print("                                invalid choices....")
    def go_back_3():
        print("\n     1) Cancel Ticket                            2) Go Back                        3)Exit")
        chr=int(input("                   Enter your choice: "))
        if (chr==1):
            try:
                r = input("Booking ID: ")
                conn = connectivity()
                cr = conn.cursor()
                q = f"DELETE FROM booking_table WHERE p_code = {r}"
                cr.execute(q)
                if cr.rowcount == 0:
                    print("Please! Enter your Booking ID...")
                else:
                    conn.commit()  # Commit the changes
                    print("Cancelling...")
                    conn.close()
            except Exception as e:
                print("Error")
                print(e)
        elif(chr==3):
            exit_program()
        else:
            print("                                invalid choices....")
    def exit_program():
        print("\n")
        print("                                         Thank you for using the Flight Booking System! Goodbye!")
        print("\n")
        sys.exit()

    print("                              ........................................ WELCOME TO FLIGHT MANAGEMENT SYSTEM ........................................ ")
    def main_menu():
        while True:
            print("                 ============================================================================================")
            print("                 *                                                                                          *")
            print("                 |                          WELCOME TO FLIGHT BOOKING SYSTEM                                |")
            print("                 |                                                                                          |")
            print("                 |                                 1) View Flight Details                                   |")
            print("                 |                                 2) Book a Flight                                         |")
            print("                 |                                 3) View Ticket                                           |")
            print("                 |                                 4) Exit                                                  |")
            print("                 |                                                                                          |")
            print("                 *==========================================================================================*")
        
            choice = input("Enter your choice: ")
        
            if choice == '1':
                flight_booking()
                go_back_1()
                go_back_2()
                go_back_3()
                
            elif choice == '2':
                flight_booking()
                booking()
                go_back_2()
                go_back_3()
            elif choice == '3':
                get_ticket_details()
                go_back_3()
                
            elif choice == '4':
                exit_program()
                break
            else:
                print("Invalid choice. Please try again.")
except Exception as e:
    print(e)
    
login_or_signup()
main_menu()


