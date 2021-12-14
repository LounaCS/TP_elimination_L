variable1="toto"
variable2="tata"

echo variable1: $variable1
echo variable2: $variable2

variable3="${variable1} ${variable2}"
echo variable3: $variable3

#this script is a simple example of variable assignation in bash

list="a b c d"
for X in $list
do
  echo Do something
  echo Do something with X=$X
  echo Do another thing
done

