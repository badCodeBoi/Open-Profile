import random

top_of_range = input("Type a number: ")

if top_of_range.isdigit():
    top_of_range = int(top_of_range)

    if top_of_range <= 0:
        print('Put in a number kid')
        quit()

else:
    print('Number Number Not Letter Number')
    quit()

random_number = random.randint(0, top_of_range)
guesses = 0

while true:
    guesses += 1
    user_guess = input("make a guess kid: ")
    if user_guess.isdigit():
    user_guess = int(user_guess)
    else:
    print('Number Number Not Letter Number')
        continue()

    if user_guess == random_number:
    print("You Grown Now")
    break
    elif user_guess > random_number:
        print("the number is higher then that")
    else:
        print("the number is lower than that")

print("Got it", guesses, "guesses")