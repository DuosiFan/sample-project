## executable name
EXECUTABLE := main.app

## directory system

# source directory
SRCDIR := src
# local header file directory
INCDIR := ./include

# out of source build directory
BUILDDIR := build
# object file directory (hidden)
OBJDIR := $(BUILDDIR)/.obj

# list of all source files (c files)
SOURCES := $(wildcard $(SRCDIR)/*.c)
OBJECTS := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)

## thirdparty library

## compiler and linker
CC = clang

# compile flags
# debug               : -g
# diagnostic          : -Wall -Wextra
# C standard          : -std=cxx
# optimization level  : -O0 (debug) -O3 (production)
CFLAGS := -g -Wall -Wextra -O0

# preprocessor flag
# -I: specify include dirs (must be explicitly added for each dir)
# -MMD -MP: generate header dependency automatically
INCPARAM := $(addprefix -I, $(INCDIR))
CPPFLAGS := $(INCPARAM) -MMD -MP

# link flags
LDFLAGS :=
LDLIBS := -lm

.PHONY: all clean
all: $(BUILDDIR)/$(EXECUTABLE)

## compile and link rules

# magic variables for implicit rules
# $@: target
# $<: first prerequisite
# $^: all prerequisites

# link
$(BUILDDIR)/$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $^ $(LDLIBS) -o $@

# compile
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@


## out of source build trees
$(OBJECTS): | $(OBJDIR)
$(OBJDIR): | $(BUILDDIR)
	mkdir -p $(OBJDIR)
$(BUILDDIR):
	mkdir -p $(BUILDDIR)

## clean rules
clean:
	rm -rf $(BUILDDIR)

## include auto generated dependency (.d file in $(BUILDDIR)/$(OBJDIR))
-include $(OBJECTS:.o=.d)
