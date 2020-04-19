# Initial variable to track game play
x = "y"
n = 'n'

# Set start and last number

start = 0

# While we are still playing...

while x == "y":

    # Ask the user how many numbers to loop through

    userinput = input('How many numbers')
    
    # Loop through the numbers. (Be sure to cast the string into an integer.)
    for i in range(start,int(userinput)):


        # Print each number in the range
        print(i)

    # Set the next start number as the last number of the loop
    range(int(userinput,i))
    print

    # Once complete... ask if the user wants to continue

    play = input('Continue the chain: (y)es or (n)o?') 
    
    if play == 'n':
        break
    elif play == 'y':
        continue
    else:
        play = input("Choose y or no! no other options")