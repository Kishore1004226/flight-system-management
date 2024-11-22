import pymysql
from random import randint
            #connections
def connectivity():
    try:
        return pymysql.connect(host="localhost",user="root",password="kish",port=3306,database="tbs")        
    except Exception as e:
        print("Not connected")
        print(e)
        # login and sign 

def login_or_signup():
    choice=input("-->  login\n-->  sign in\nSelect any one   :") 
    if choice.lower() == 'login':
        login()
    elif choice.lower() == 'sign in':
        sign_up()
    else:
        print("Invalid choice. Please try again.")
        login_or_signup()
        #sign up
def sign_up():
    try:
        i=0
        print("                SIGN UP")
        uid=randint(1000, 10000)
        print("uid  :",uid)
        email=input("EMAIL  :")
        user_name=input("USER NAME  :").lower()
        crt_password=input("CREATE PASSWORD:")
        co_password=input("CONFIRM PASSWORD:")
        while(i<2):
            if crt_password != co_password:
                print("Confirm Password does not match!")
                co_password=input("CONFIRM PASSWORD:")
                i+=1
                print("try again later..")  
                return 
            else:
                break   
        query = f"INSERT INTO user_table (uid,Email, user_name, password,con_password) VALUES ('{uid}','{email}', '{user_name}', '{crt_password}', '{co_password}')"
        conn= connectivity()
        cr=conn.cursor()
        cr.execute(query)
        conn.commit()
        print(f"\n                          {user_name} has been successfully registered! \n")
        conn.close()
    except Exception as e:
        print("An error occurred")
        print(e)
            #login 
def login():
    try:
        print("             LOGIN")
        user_name=input("NAME:")
        crt_password=input("PASSWORD:")
        query=f"SELECT * FROM user_table WHERE (user_name)='{user_name}'AND con_password='{crt_password}'"
        con= connectivity()
        cr=con.cursor()
        cr.execute(query)
        user = cr.fetchone()
        if user:
            print("                                                                  Login successful!\n")
        else:
            print("Invalid User Name/Password...Try again")
            login()
        con.close()
    except Exception as e:
        print("Error")
        print(e)