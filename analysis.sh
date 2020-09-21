Positive=`grep -c positive data2.csv`
echo "Positive count =" $Positive
Negative=`grep -c negative data2.csv`
echo "Negative count =" $Negative
echo "Total unique words =" $(tr -s [:space:][:punct:] \\n < data2.csv | sed 's/[^a-z  A-Z]//g' | tr [:upper:] [:lower:] | sort | uniq | wc -l)
