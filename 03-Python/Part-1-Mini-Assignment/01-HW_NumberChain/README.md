# Number Chain

Chain up the numbers

## Instructions

* Using a while loop, ask the user "How many numbers?", then print out a chain of ascending numbers, starting at 0.

* After the results have printed ask the user if they would like to continue.

  * If "y", restart the process, starting at 0 again.

  * If "n", exit the chain.

* NOTE: .

Sample output can look like this:

```
How many numbers? 9
0
1
2
3
4
5
6
7
8

Continue the chain: (y)es or (n)o? y

How many numbers? 8
9
10
11
12
13
14
15
16

Continue the chain: (y)es or (n)o? 
```



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


    # Once complete... ask if the user wants to continue

