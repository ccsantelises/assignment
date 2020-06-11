echo "Hello! Welcome to the Guessing game!"

function ask {
	echo "Please enter your guess: How many files are in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "You entered $guess. Your guess was too low, keep guessing."
	else
		echo "You entered $guess. Your guess was too high, keep guessing."
	fi
	ask
done

echo "Congratulations! You guessed right, woohoo!"
echo "Well done."

read -p "Would you like to see the list of files in the current directory? (y/n)" choice
echo #
if [ "$choice" = "y" ]; then
  echo "---" && ls -1;
else
  echo "Exit Game";
fi
