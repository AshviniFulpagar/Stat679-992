# Here, task was to create a csv files which has data from multiple log and out files. 
#In the first step, created an csv file "output.csv"
# First for loop takes inpuut as log files, extracts data as: rootname is extracted from the lines using regular expression by searching 
# which line has the word "root ... file" and by using cut command extracted exact root of the file
#hmax is extracted similarly 
# printed tehse two values to the CSV file
#second loop is use to extarct data from out files
# by using regular expression each line is scanned and cut the part which has CPUtime
#finally printed it as a column for csv
# I could not print all three variables together as a 3 columns of the same row! 


#!/bin/bash
echo "analysis,h,CPUtime" > results/result.csv
for filename in $(ls log)

do
    rootname=$(echo $filename | cut -d . -f1)
    hmax=$(grep "hmax = [0-9]*" log/$filename -o | cut -d ' ' -f3)
    CPUtime=$(grep -o "Elapsed time: [0-9]*.[0-9]*" out/$rootname.out | cut -d ' ' -f3)

    echo "$rootname,$hmax,$CPUtime" >> results/result.csv
    
done
