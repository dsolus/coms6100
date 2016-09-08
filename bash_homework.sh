#usr/bin/bash
echo 'Hello World!'

#Store your name in a variable
name='Daniel Solus'

#
echo $name
#Stores your research area in a variable
my_research='Planetary Astronomy'
echo $my_research

#Tests if your research area is the same as Dr. Carroll's (Bioinformatics). If they're the same, then, displays "Dr. Carroll's research area is cool". Otherwise, displays "Let me tell you about " (and then the name of the research area, again using a variable).
your_research='Bioinformatics'
if [ $my_research == 'Bioinformatics' ]; then echo "Dr. Carroll's research area is cool";
    else echo "Let me tell you about" $my_research; fi


#Uses a loop (that was not covered in lecture) to display information to the screen
#echos the name of your favorite color and stores the stdout in a file named colors.txt
count = 10
while [ $count -gt 0 ]; do
    echo "$count"
    count=$(( count - 1 ))
    if [ $count -eq 0 ]; then echo "Blast Off!"; fi
done

#echos the name of your second favorite color and adds it to the end of the file named colors.txt

#echos the name of the last color that you learned and adds it to the end of the file name colors.txt
#Sorts the contents of colors.txt and stores the result in colors-sorted.txt
