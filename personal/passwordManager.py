master_pwd = input ("")

def view():
    with open('passwords.txt', 'r') as f:
        for line in f.readlines():
            data = line.rstrip()
            user, passw = data.split("|")
            "hello|tim"
            ["hello" ,"tim"]

def add():
    name = input('Account Name: ')
    pwd = input("Password ")

    with open('passwords.txt', 'a') as f:
    f.write(name + "|" + pwd + "\n")

 
while true:
    mode = input("Would you like to add a new password to the list").lower
    if mode == "q":
        break:

    if mode == "view": 
        pass
    elif mode == "add":
        pass
    else:
        print("Invalid mode.")
        continue