############################################################
## Makefile for the goLite_complier grammar
## ---------------------------------------------------------
##
## Usage:
##   make [target]
##
## Targets:
##   goLite_complier.byte     -- build the example as ocaml byte code (default target)
##   goLite_complier.native   -- build the example as native
##   goLite_complier.top      -- build an interactive toplevel
##   goLite_complier.debug    -- build the example with debugging symbols
##   goLite_complier.profile  -- build the example with profiling instrumentation
##   htdoc          -- generate documentation (in doc/index.html)
##   clean          -- clean up all build related files
##
############################################################

# (just ignore this thing...)
.PHONY: default all \
        goLite_complier.byte goLite_complier.native goLite_complier.top goLite_complier.debug goLite_complier.profile \
        htdoc clean prepare findlib

# Default build target (defined below)
# should probably be either 'goLite_complier.native' or 'goLite_complier.byte'
goLite_complier: goLite_complier.byte

# Default target for Eclipse
all: goLite_complier

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

goLite_complier.byte: prepare
	@echo "*** Building goLite_complier.byte"
	@$(OCAMLBUILD) $(SRC_DIR)/main.byte
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.byte goLite_complier.byte
	@ln -sf goLite_complier.byte goLite_complier

test: goLite_complier.byte
	@echo "*** Building Tests"
	@$(OCAMLBUILD) -pkg oUnit $(TEST_DIR)/test.byte
	@echo "*** Running Tests"
	./test.byte

goLite_complier.native: prepare
	@echo "*** Building goLite_complier.native"
	@$(OCAMLBUILD) $(SRC_DIR)/main.native
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.native goLite_complier.native
	@ln -sf goLite_complier.native goLite_complier

goLite_complier.debug: prepare
	@echo "*** Building goLite_complier.debug"
	@$(OCAMLBUILD) $(SRC_DIR)/main.d.byte
	@ln -sf _build/$(SRC_DIR)/main.d.byte goLite_complier.debug

goLite_complier.profile: prepare
	@echo "*** Building goLite_complier.profile"
	@$(OCAMLBUILD) $(SRC_DIR)/main.p.native
	@ln -sf _build/$(SRC_DIR)/main.p.native goLite_complier.profile

goLite_complier.top: prepare
	@echo "*** Building goLite_complier.top"
	@echo $(MODS:%=$(SRC_DIR)/%) > $(SRC_DIR)/main.mltop
	@$(OCAMLBUILD) $(SRC_DIR)/main.top
	@rm -f $(SRC_DIR)/main.mltop
	@ln -sf _build/$(SRC_DIR)/main.top goLite_complier.top

htdoc: goLite_complier.byte
	@echo "*** Building $(DOC_DIR)"
	@mkdir -p $(DOC_DIR)
	@ocamldoc -d $(DOC_DIR) -I $(BLD_DIR)/$(SRC_DIR) \
	  -html $(MODS:%=$(BLD_DIR)/$(SRC_DIR)/%.ml)
	@echo "Open $(DOC_DIR)/index.html to browse the documentation."

clean:
	$(OCAMLBUILD) -clean
	rm -rf $(DOC_DIR)
	rm -f goLite_complier goLite_complier.byte goLite_complier.native goLite_complier.top goLite_complier.debug goLite_complier.profile
	rm -f $(SRC_DIR)/main.mltop
	rm -f .ocamlinit
	rm -f parser.automaton

## Some specially generated files
.ocamlinit:
	@echo "#directory \"$(BLD_DIR)/$(SRC_DIR)\";;" > .ocamlinit

parser.automaton:
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/parser.automaton parser.automaton

prepare: .ocamlinit parser.automaton
