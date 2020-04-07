## Variables ..........................................................................:
CC= gcc
CFLAGS= -Wall -g

## File directory .....................................................................:
SRCDIR= src
HEADDIR= include
OBJDIR= object
BINDIR= bin

## Project structure ..................................................................:
EXEC1= geffe
EXEC2= feistel
SRC1= $(wildcard $(SRCDIR)/Geffe/*.cpp)
SRC2= $(wildcard $(SRCDIR)/Feistel/*.cpp)
OBJ1= $(SRC:$(SRCDIR)/Geffe/*.cpp=$(OBJDIR)/*.o) 
OBJ2= $(SRC:$(SRCDIR)/Feistel/*.cpp=$(OBJDIR)/*.o) 

## Launching ..........................................................................:
geffe: all
	@$(BINDIR)/./$(EXEC1)

feistel: all
	@$(BINDIR)/./$(EXEC2)

## Compilation ........................................................................:
all: $(EXEC1) $(EXEC2)

$(EXEC1): $(OBJ1)
	@$(CC) -g -o $(BINDIR)/$@ $^ 

$(EXEC2): $(OBJ2)
	@$(CC) -g -o $(BINDIR)/$@ $^

$(OBJDIR)/Geffe/%.o: $(SRCDIR)/Geffe/%.cpp $(HEADDIR)/Geffe/%.h
	@$(CC) -o $@ -c $< $(CFLAGS)

$(OBJDIR)/Feistel/%.o: $(SRCDIR)/Feistel/%.cpp $(HEADDIR)/Feistel/%.h
	@$(CC) -o $@ -c $< $(CFLAGS)

## Object cleaning ....................................................................:
clean:
	@rm $(OBJDIR)/*.o

## Executable cleaning ................................................................:
Clean:clean
	@rm $(BINDIR)/*

## Archiving ..........................................................................:
tar:
	tar -zcvf ../CryptographieSymetrique.tar.gz *