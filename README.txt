==Problem Description==

The goal of this challenge is to implement a solution for checking if credit
card numbers are valid. There are two parts to this challenge.

First, there are some specific patterns we can check based on the card type.
The table below shows these patterns:

+============+=============+===============+
| Card Type  | Begins With | Number Length |
+============+=============+===============+
| AMEX       | 34 or 37    | 15            |
+------------+-------------+---------------+
| Discover   | 6011        | 16            |
+------------+-------------+---------------+
| MasterCard | 51-55       | 16            |
+------------+-------------+---------------+
| Visa       | 4           | 13 or 16      |
+------------+-------------+---------------+

Second, all the card types above generate numbers that can be validated by 
the algorithm described below:

1. Starting with the next to last digit and continuing backwards, we double
   every other digit.
2. Sum all the digits (doubled and undoubled).
3. If the sum is a multiple of 10, the card is valid.

For example, assume our card number is 4223747542628374.

First, double every other digit starting from the next to last, working
backwards.

8 2 4 3 14 4 14 5 8 2 12 2 16 3 14 4

Now, sum all the digits. Notice that the two digit numbers which result from
doubling are split into individual digits.

8 + 2 + 4 + 3 + 1 + 4 + 4 + 1 + 4 + 5 + 8 + 2 + 1 + 2 + 2 + 1 + 6 + 3 + 1 + 4 + 4

Total: 70

70 is a multiple of 10, therefore this card is valid.


==Your Goal==

Your goal is to implement a ruby program which identifies valid and invalid
credit cards. It should identify the card number 4223747542628374 as a valid
and the number 4123747542628374 as invalid.

We have provided your with a skeleton CreditCard class and a simple RSpec file
specifying the behavior of that class.

We know solutions may be available for this problem but please do your own
work and be prepared to discuss your design decisions.


==What You Need==

You'll need ruby installed on your system to complete this challenge. To run
the RSpec examples, you'll need the rspec gem installed. If all is well, you
should be able to run "spec spec/" from inside the project folder and see a
passing RSpec example.

