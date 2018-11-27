COLLEEN = Colleen
COLLEEN_SRC = Colleen.s
COLLEEN_OBJ = Colleen.o

GRACE = Grace
GRACE_SRC = Grace.s
GRACE_OBJ = Grace.o

SULLY = Sully
SULLY_SRC = Sully.s
SULLY_OBJ = Sully.o

NASM_FLAGS = -f macho
LD_FLAGS = -macosx_version_min 10.8 -lSystem

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_SRC)
	nasm $(NASM_FLAGS) $(COLLEEN_SRC) -o $(COLLEEN_OBJ)
	ld $(LD_FLAGS) $(COLLEEN_OBJ) -o $(COLLEEN)

$(GRACE): $(GRACE_SRC)
	nasm $(NASM_FLAGS) $(GRACE_SRC) -o $(GRACE_OBJ)
	ld $(LD_FLAGS) $(GRACE_OBJ) -o $(GRACE)

$(SULLY): $(SULLY_SRC)
	nasm $(NASM_FLAGS) $(SULLY_SRC) -o $(SULLY_OBJ)
	ld $(LD_FLAGS) $(SULLY_OBJ) -o $(SULLY)

clean:
	rm -rf $(SULLY)_*
	rm -rf $(SULLY_OBJ)
	rm -rf $(GRACE)_kid.s
	rm -rf $(GRACE_OBJ)
	rm -rf $(COLLEEN_OBJ)

fclean: clean
	rm -rf $(SULLY)
	rm -rf $(GRACE)
	rm -rf $(COLLEEN)

re: fclean all
