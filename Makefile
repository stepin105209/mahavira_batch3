# Name of the project
PROJECT_NAME = activity2a

# Output directory
BUILD = build

# All source code files
SRC = main.c\
src/sandesh.c\
src/arnab.c\
src/chaitu.c\
src/chandan.c\
src/naveen.c\
src/sayan.c\
src/sowmya.c\
src/srinidhi.c\
src/vikram.c




# All include folders with header files
INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out


# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out


# Remove all the built files, invoke by `make clean`
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)

# Create new build folder if not present
$(BUILD):
	mkdir build