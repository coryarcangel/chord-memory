#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

counter=0
file_path=$1
end_mil=0

# Check if the file exists
if [ -e "$file_path" ]; then
	while IFS=$'\t', read -r c1 c2 c3 c4 c5 c6 c7; do
		if [ $counter -le 5 ]; then
			echo $c1, $c2, $c3, $c4, $c5, $c6, $c7		
		elif [[ $c3 =~ ^[0-9]+$ ]]; then
			if [[ $c3 = 0 ]]; then
				:
			else
				end_mil=$((c2 + c7))
				echo $c1, $c2, Note_on_c, 1, $c3, 81
				echo $c1, $c2, Note_on_c, 1, $c4, 81
				echo $c1, $c2, Note_on_c, 1, $c5, 81
				echo $c1, $c2, Note_on_c, 1, $c6, 81
				echo $c1, $end_mil, Note_off_c, 1, $c3, 81
				echo $c1, $end_mil, Note_off_c, 1, $c4, 81
				echo $c1, $end_mil, Note_off_c, 1, $c5, 81
				echo $c1, $end_mil, Note_off_c, 1, $c6, 81
			fi					
		elif [ $c3 = "End_track" ] || [ $c3 = "End_of_file" ]; then
			echo $c1, $end_mil, $c3	
		fi
		((counter++))
	done < "$file_path"	
else
    echo "File not found: $file_path"
fi

