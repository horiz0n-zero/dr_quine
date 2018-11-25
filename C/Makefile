COLLEEN = Colleen
COLLEEN_SRC = Colleen.c

GRACE = Grace
GRACE_SRC = Grace.c

SULLY = Sully
SULLY_SRC = Sully.c

FLAGS = -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_SRC)
	clang $(FLAGS) $(COLLEEN_SRC) -o $(COLLEEN)

$(GRACE): $(GRACE_SRC)
	clang $(FLAGS) $(GRACE_SRC) -o $(GRACE)

$(SULLY): $(SULLY_SRC)
	clang $(FLAGS) $(SULLY_SRC) -o $(SULLY)

clean:
	rm -rf $(GRACE)_kid.c
	rm -rf $(SULLY)_*

fclean: clean
	rm -rf $(GRACE)
	rm -rf $(COLLEEN)
	rm -rf $(SULLY)

re: fclean all
