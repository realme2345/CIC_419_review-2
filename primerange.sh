# arrays.sh
#!/bin/bash -x
# check if a number is prime
# function to return whether prime or not
primenumber()
{
 number=$1
 flag=0
 i=2
 while [ $i -le $(($number/2)) ]
   do
      if [ $(($number%$i)) -eq 0 ]
      then
      flag=1 ;
      fi
      i=$(($i+1))
   done

 if  [ $flag -eq 0 ]
  then
    echo " prime number  $number " ;
  fi
}

# Assign from values from user
read -p " enter the number start range :" startRange
read -p " enter a number End range: " endRange

for (( range=$startRange; range<=$endRange; range++ ))
   do
     primenumber $range
   done

