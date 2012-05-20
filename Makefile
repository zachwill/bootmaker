NORM=\033[0m
BOLD=\033[1m
CHECK=\033[32m✔\033[39m

BLACK_F="\033[30m"; BLACK_B="\033[40m"
RED_F="\033[31m"; RED_B="\033[41m"
GREEN_F="\033[32m"; GREEN_B="\033[42m"
YELLOW_F="\033[33m"; YELLOW_B="\033[43m"
BLUE_F="\033[34m"; BLUE_B="\033[44m"
MAGENTA_F="\033[35m"; MAGENTA_B="\033[45m"
CYAN_F="\033[36m"; CYAN_B="\033[46m"
WHITE_F="\033[37m"; WHITE_B="\033[47m"

# Cool characters: ✩ ✪ ⚡
# ----------------------
#  Default build
# ----------------------
build:
	@echo "\n⚡  ${BOLD}This might take a minute${NORM}  ⚡\n"
	@git clone git://github.com/twitter/bootstrap.git
	@echo "\n${BOLD}Clone Twitter Bootstrap...  ${NORM}${CHECK}\n"
	@cd bootstrap; make bootstrap
	@cd bootstrap; cp -R less bootstrap/css/less
	@cd bootstrap; mv bootstrap/* ../
	@echo "\n${BOLD}Moved files...  ${NORM}${CHECK}\n"
	@rm -rf bootstrap
	@make javascript

# ----------------------
#  rm -rf all the things!
# ----------------------
clean:
	@rm -rf bootstrap
	@rm -rf {css,img,js}

# ----------------------
#  External JavaScript
# ----------------------
javascript:
	@curl -L http://git.io/less-1.3.0 > js/less.js
	@echo "\n${BOLD}Grab latest LESS.js...  ${NORM}${CHECK}\n"
