COLLEEN = Colleen
COLLEEN_SRC = Colleen.s
COLLEEN_OBJ = Colleen.o

GRACE = Grace
GRACE_SRC = Grace.s
GRACE_OBJ = Grace.o

SULLY = Sully
SULLY_SRC = Sully.s
SULLY_OBJ = Sully.o

NASM_FLAGS = -f macho64
LD_FLAGS = -macosx_version_min 10.8 -lSystem

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEEN_SRC)
	nasm $(NASM_FLAGS) $(COLLEEN_SRC) -o $(COLLEEN_OBJ)
	ld $(LD_FLAGS) $(COLLEEN_OBJ) -o $(COLLEEN)
	rm -rf $(COLLEEN_OBJ)

$(GRACE): $(GRACE_SRC)
	nasm $(NASM_FLAGS) $(GRACE_SRC) -o $(GRACE_OBJ)
	ld $(LD_FLAGS) $(GRACE_OBJ) -o $(GRACE)
	rm -rf $(GRACE_OBJ)

$(SULLY): $(SULLY_SRC)
	nasm $(NASM_FLAGS) $(SULLY_SRC) -o $(SULLY_OBJ)
	ld $(LD_FLAGS) $(SULLY_OBJ) -o $(SULLY)
	rm -rf $(SULLY_OBJ)

clean:
	rm -rf $(SULLY)_*
	rm -rf $(GRACE)_kid.s

fclean: clean
	rm -rf $(SULLY)
	rm -rf $(GRACE)
	rm -rf $(COLLEEN)

re: fclean all
