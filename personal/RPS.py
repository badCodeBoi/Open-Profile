import random

user_wins = 0
pc_wins = 0

options = ["rock", "papper", "scissors"]
options[0]
while true:
    user_input = input("Type Rock or Paper or Scissors or Q to exit: ").lower()
    if user_input == "q":
        break

    if user_input not in options:
        continue

    random_number = random.randint(0, 2)
    #r = 0 p = 1 s = 2
    pc_pick = options[random_number]
    print("We pick", pc_pick + ".")

    elif user_input == "rock" and pc_pick == "scissors"
        print("You win Damn, i think i have a virus")
        user_wins += 1
        
    elif user_input == "papper" and pc_pick == "rock"
        print("You win Damn, i think i have a trojan")
        user_wins += 1

    elif user_input == "scissors" and pc_pick == "papper"
        print("You win Damn, i think i have to update")
        user_wins += 1
    else:
        print("You lost and as expected the PC WINS EASY!!!")
        pc_wins += 1

print("You won", user_wins, "times Human")
print("I the almity Com Won", pc_wins, "times Human.")
print("Good playing, Bye!")