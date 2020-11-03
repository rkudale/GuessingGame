all: README.md

README.md: guessing_game.sh
	echo "## My Unix Workbench Project" >> README.md
	echo "\n**Description:** Creating a program called *guessing_game.sh*. This program will ask the user to guess the number of files in the current directory, until correct number is guessed. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo "\n**Creation date:** `date '+%d/%m/%Y'`\n" >> README.md
	echo "\n**Time:** `date '+%H:%M:%S'`\n" >> README.md
	echo "\n**Number of lines in guessing_game.sh:**" >> README.md
	cat guessing_game.sh | wc -l >> README.md

clean:
	rm README.md
