all: title date num_lines

title:
	@echo "Unix project by Sayyad Ali Raza" > readme.md
date:
	@date >> readme.md
num_lines:
	@wc -l guessinggame.sh >> readme.md
