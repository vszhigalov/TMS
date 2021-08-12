string = input("Please enter a string:\n")
vowel=0
for char in string:
    if char in 'aeiou':
        vowel += 1
print(f'You entered {string}. It\'s lenght: {len(string)} symbols and {vowel} vowel')
