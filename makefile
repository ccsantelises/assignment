echo "Project title: The Guessing Game" >> README.md

       echo "The date and time at which make was run:" >> README.md

       date >> README.md

       echo "The number of lines of code contained in guessinggame.sh:" >> README.md

       wc -l guessinggame.sh | egrep "[0-9]+" >> README.md


