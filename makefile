README.md:
	@echo "Generating README.md..."
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "This project contains a Bash script that implements a guessing game where the user guesses the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "## Build Information" >> README.md
	@echo "- **Date and Time of Build**: $$(date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
	@echo "- **Lines of Code in guessinggame.sh**: $$(wc -l < guessinggame.sh)" >> README.md
