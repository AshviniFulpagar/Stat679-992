# written a code using for loop and regex for shell which adds 0 if filename"test1" has no 0 before 
#the digit 1 unless it doesnot make any change. 
#As instructed in one of the previous sessions I installed Homebrew, mac os does not
#supoort rename commnad, so I used Homebrew to insatll and use rename package.
##This regex simply splits digits, and add 0 before 2nd digit.

for filename in log/timetest[0-9]*.log
    do
    rename 's/\d+/sprintf("%02d",$&)/e' log/timetest[0-9]*.log
    done

for filename in out/timetest[0-9]*.out
    do
    rename 's/\d+/sprintf("%02d",$&)/e' out/timetest[0-9]*.out
    done