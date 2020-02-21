############################################################
## Makefile for the goLite_compiler grammar
## ---------------------------------------------------------
##
## Usage:
##   make [target]
##
## Targets:
##   goLite_compiler.byte     -- build the example as ocaml byte code (default target)
##   goLite_compiler.native   -- build the example as native
##   goLite_compiler.top      -- build an interactive toplevel
##   goLite_compiler.debug    -- build the example with debugging symbols
##   goLite_compiler.profile  -- build the example with profiling instrumentation
##   htdoc          -- generate documentation (in doc/index.html)
##   clean          -- clean up all build related files
##
############################################################

# (just ignore this thing...)
.PHONY: default all \
        goLite_compiler.byte goLite_compiler.native goLite_compiler.top goLite_compiler.debug goLite_compiler.profile \
        htdoc clean prepare findlib

# Default build target (defined below)
# should probably be either 'goLite_compiler.native' or 'goLite_compiler.byte'
goLite_compiler: goLite_compiler.byte

# Default target for Eclipse
all: goLite_compiler

# Non-source directories (comma separated, no spaces)
# Add directories that do not contain ml source files.
# Fx directories with test cases (will speed up compilation)
EXCL_DIRS := doc

# dOvs modules for generating a toplevel and documentation
# (ie, with source code in src/<module>.ml)
MODS := cst \
        parser lexer \
        main

############################################################
## YOU SHOULD NOT NEED TO EDIT ANYTHING BELOW THIS LINE
############################################################

# Directories
SRC_DIR := .
TEST_DIR := test
DOC_DIR := doc
BLD_DIR := _build

# Base invokation of ocamlbuild
OCAMLBUILD := ocamlbuild -no-links -use-menhir -menhir "menhir -v" -Xs $(EXCL_DIRS)

goLite_compiler.byte: prepare
	@echo "*** Building goLite_compiler.byte"
	@$(OCAMLBUILD) $(SRC_DIR)/main.byte
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.byte goLite_compiler.byte
	@ln -sf goLite_compiler.byte goLite_compiler

test: goLite_compiler.byte
	@echo "*** Building Tests"
	@$(OCAMLBUILD) -pkg oUnit $(TEST_DIR)/test.byte
	@echo "*** Running Tests"
	./test.byte

goLite_compiler.native: prepare
	@echo "*** Building goLite_compiler.native"
	@$(OCAMLBUILD) $(SRC_DIR)/main.native
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.native goLite_compiler.native
	@ln -sf goLite_compiler.native goLite_compiler

goLite_compiler.debug: prepare
	@echo "*** Building goLite_compiler.debug"
	@$(OCAMLBUILD) $(SRC_DIR)/main.d.byte
	@ln -sf _build/$(SRC_DIR)/main.d.byte goLite_compiler.debug

goLite_compiler.profile: prepare
	@echo "*** Building goLite_compiler.profile"
	@$(OCAMLBUILD) $(SRC_DIR)/main.p.native
	@ln -sf _build/$(SRC_DIR)/main.p.native goLite_compiler.profile

goLite_compiler.top: prepare
	@echo "*** Building goLite_compiler.top"
	@echo $(MODS:%=$(SRC_DIR)/%) > $(SRC_DIR)/main.mltop
	@$(OCAMLBUILD) $(SRC_DIR)/main.top
	@rm -f $(SRC_DIR)/main.mltop
	@ln -sf _build/$(SRC_DIR)/main.top goLite_compiler.top

htdoc: goLite_compiler.byte
	@echo "*** Building $(DOC_DIR)"
	@mkdir -p $(DOC_DIR)
	@ocamldoc -d $(DOC_DIR) -I $(BLD_DIR)/$(SRC_DIR) \
	  -html $(MODS:%=$(BLD_DIR)/$(SRC_DIR)/%.ml)
	@echo "Open $(DOC_DIR)/index.html to browse the documentation."

clean:
	$(OCAMLBUILD) -clean
	rm -rf $(DOC_DIR)
	rm -f goLite_compiler goLite_compiler.byte goLite_compiler.native goLite_compiler.top goLite_compiler.debug goLite_compiler.profile
	rm -f $(SRC_DIR)/main.mltop
	rm -f .ocamlinit
	rm -f parser.automaton

## Some specially generated files
.ocamlinit:
	@echo "#directory \"$(BLD_DIR)/$(SRC_DIR)\";;" > .ocamlinit

parser.automaton:
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/parser.automaton parser.automaton

prepare: .ocamlinit parser.automaton
