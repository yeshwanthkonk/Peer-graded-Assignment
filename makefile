all:	README.md
README.md:
	echo "## Peer-Graded-Assignment-Guessing-Files <br />" > README.md
	echo -n "**Date and Time of creation:** " >> README.md
	date >> README.md
	echo "<br />" >> README.md
	echo "<br />" >> README.md
	echo -n "**Number of lines in guessing.sh file:** " >> README.md
	wc -l guessinggame.sh|egrep -o "[0-9]{2}" >> README.md
	echo "<br />" >> README.md
clean:
