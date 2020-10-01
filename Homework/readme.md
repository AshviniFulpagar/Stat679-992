# homework 1

This is a multi-assignment homework: 1.1, 1.2, 1.3
- see [questions & instructions](instructions.md)
- see [expectations](https://github.com/UWMadison-computingtools-master/general-info/blob/master/rubric.md)
  with excellent = 3, satisfactory = 2, needs work =1, not done = 0 points.  
  For this homework, we will not use all rubric categories: we will skip
  "presentation: graphs and tables" and "achievement". We will grade the
  categories "code performance", "coding strategy", "coding style,
  "project documentation" and "work submission".

## homework 1.1 solution
Below lines explains more about the input files, code and what steps I followed:

- I run script/normalizeFileNames.sh, on 09-16-2020 and 09-16-2020 under MacOS Cantalina v10.15.5 by using Terminal and Visual Studio (used as a text editor and I found its is pretty simple and flexible)
- For the code refer normalizeFileNames.sh file, it renames files from log and out directory such that if a name is “abcd1.log” it changes to “abcd01.log” only for the files “abcd[0-9]" otherwise it doesn’t make any change
- I used for loop to work on multiple files together and #rename command to rename the files. As macOS Terminal does not support #rename, Homebrew helped me to run rename
- While working on this assignment I explored many other commands like #mv and #cp
- I preferred to use Regular Expressions as it speeds up processing and not much difficult to use. 

## homework 1.2 solution
Below lines explains more about the input files, code and what steps I followed:

- I run script/summarizeSNaQres.sh, on 09-24-2020 and 09-23-2020 under MacOS Cantalina v10.15.5 by using Terminal and Visual Studio (used as a text editor and I found its is pretty simple and flexible)
- For the code refer summarizeSNaQres.sh file, it extracts data from the string by using a perticular pattern (word in this case) and use this data as a field in the output.csv file
- This code searched three values like rootname, hmax and CPUtime from multiple log and out files and exports this data to an output.csv file
- I used for loop to work on multiple files together and grep, cut commands to search the pattern with regular expressions and cut the pertifular field of teh string 
- While working on this assignment I could not print the expected output without using awk or sed. 

