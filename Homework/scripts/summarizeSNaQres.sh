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
echo "analysis,h,CPUtime" > output.csv
for filename in log/*.log
do
    rootname=$(grep -i 'root.*files' $filename | cut -f2 -d":")
    hmax=$(grep -r "hmax =" $filename | cut -d ' ' -f4 | rev | cut -c 2-)
    echo "$rootname,$hmax" >> output.csv
done

for filename in out/*.out
do
    CPUtime=$(grep -o "Elapsed time: [0-9]\+.[0-9]\+" $filename | cut -d ' ' -f3)
    echo ",,$CPUtime" >> output.csv
done


#grep -i 'root.*files' log/timetest7_snaq.log  | cut -f2 -d":"   
#grep -r "hmax =" log/*.log | cut -d ' ' -f4 | rev | cut -c 2- 
