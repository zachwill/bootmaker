# ----------------------
#  Useful variables
# ----------------------
NORM=\033[0m
BOLD=\033[1m
CHECK=\033[32m✔\033[39m


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
	@make js


# ----------------------
#  rm -rf all the things!
# ----------------------
clean:
	@rm -rf {bootstrap,css,img,js}


# ----------------------
#  External JavaScript
# ----------------------
js:
	@curl -L http://git.io/less-1.3.0 > js/less.js
	@echo "\n${BOLD}Grab latest LESS.js...  ${NORM}${CHECK}\n"
	@curl http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js > js/jquery.js
	@echo "\n${BOLD}Grab latest jQuery...  ${NORM}${CHECK}\n"


.PHONY: css js
