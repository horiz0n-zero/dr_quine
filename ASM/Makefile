COLLEEN = Colleen
COLLEEN_SRC = Colleen.s
COLLEEN_OBJ = Colleen.o

GRACE = Grace
GRACE_SRC = Grace.s
GRACE_OBJ = Grace.o

NASM_FLAGS = -f macho64
LD_FLAGS = -macosx_version_min 10.8 -lSystem

all: $(COLLEEN) $(GRACE)

$(COLLEEN): $(COLLEEN_SRC)
	nasm $(NASM_FLAGS) $(COLLEEN_SRC) -o $(COLLEEN_OBJ)
	ld $(LD_FLAGS) $(COLLEEN_OBJ) -o $(COLLEEN)

$(GRACE): $(GRACE_SRC)
	nasm $(NASM_FLAGS) $(GRACE_SRC) -o $(GRACE_OBJ)
	ld $(LD_FLAGS) $(GRACE_OBJ) -o $(GRACE)

clean:
	rm -rf $(GRACE)_kid.s
	rm -rf $(GRACE_OBJ)
	rm -rf $(COLLEEN_OBJ)

fclean: clean
	rm -rf $(GRACE)
	rm -rf $(COLLEEN)

re: fclean all
