# Compiler and Flags
CC = gcc
CFLAGS = -Iinclude -Wall -Wextra -g

# Directories
SRCDIR = src
INCLUDEDIR = include
BUILDDIR = build

# Files
SOURCES = $(wildcard $(SRCDIR)/*.c)
OBJECTS = $(patsubst $(SRCDIR)/%.c,$(BUILDDIR)/%.o,$(SOURCES))
TARGET = $(BUILDDIR)/sqlite3

# Default target
all: $(TARGET)

# Build target
$(TARGET): $(OBJECTS)
	@echo "Linking objects to create executable..."
	$(CC) $(OBJECTS) -o $@

# Rule for object files
$(BUILDDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(BUILDDIR)
	@echo "Compiling $<..."
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target
clean:
	@echo "Cleaning build directory..."
	rm -rf $(BUILDDIR)

# Run target
run: $(TARGET)
	@echo "Running the program..."
	./$(TARGET)

# Phony targets
.PHONY: all clean run
