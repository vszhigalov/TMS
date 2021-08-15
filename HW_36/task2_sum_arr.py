import numpy as np

lst = np.random.randint(0, 100, 20)
lst1 = np.random.randint(0, 100, 20)

print(lst,lst1)

sum = 0
for i in lst:
    sum += i
print(sum)