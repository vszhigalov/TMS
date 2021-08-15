# import os
# arr = os.listdir('/home')
# print(arr)
#https://stackoverflow.com/questions/3207219/how-do-i-list-all-files-of-a-directory

# import os
# from os import listdir
# from os.path import isfile, join

# cwd = os.getcwd()
# #cwd = '/home'
# onlyfiles = [os.path.join(f) for f in os.listdir(cwd) if 
# os.path.isfile(os.path.join(cwd, f))]
# print(onlyfiles)
# print(cwd) 

import os
files = [f for f in os.listdir('.') if os.path.isfile(f)]
print(files)
