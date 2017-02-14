if [ -z "$1" ]; then
	exit 0
fi

sed -e 's/[^[:alpha:]]/ /g' $1 | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr | nl >> $1.txt
