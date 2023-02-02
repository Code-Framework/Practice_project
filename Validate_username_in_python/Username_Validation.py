import sys #system library 
def validate_username(username): # Function Execution 
    if len(username) <= 1: #  If username is less than one character raise exception.
         raise Exception("Sorry,username must be longer than one character.")
    if len(username) > 20: # If username is more than 20 character raise exception.
         raise Exception("Sorry,username cannot be more than 20 letter in length")
    if not any(char.isdigit() for char in username): # Is there any digit in username, if not raise exception
         raise Exception("User must enter at least one number 0-9")
    if not any(char.isupper() for char in username): # Check for Upper case letter if not execption .
         raise Exception("User must enter at least one upper case alphabet")

while True: # Loop will continue until true :
    username = input("Enter username: ").strip() # Taking user input and removing space
    try: # Try block to catch exception.
        validate_username(username)  # call to function with username as argument :
        break # If username is valid the loop will break : 
    except Exception as error: # Exception catched if username is invalid :
        print("", error) #Exception error displayed to user :
print("User :", username) # Username is Displayed to user.

