number = input("Enter number: ")

sum_of_digits = 0
for digit in str(number):
  sum_of_digits += int(digit)

print(f"Your number: {number} \nYour sum: {sum_of_digits}")