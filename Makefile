############################################################
## Makefile for the xyz grammar
## ---------------------------------------------------------
##
## Usage:
##   make [target]
##
## Targets:
##   xyz.byte     -- build the example as ocaml byte code (default target)
##   xyz.native   -- build the example as native
##   xyz.top      -- build an interactive toplevel
##   xyz.debug    -- build the example with debugging symbols
##   xyz.profile  -- build the example with profiling instrumentation
##   htdoc          -- generate documentation (in doc/index.html)
##   clean          -- clean up all build related files
##
############################################################

# (just ignore this thing...)
.PHONY: default all \
        xyz.byte xyz.native xyz.top xyz.debug xyz.profile \
        htdoc clean prepare findlib

# Default build target (defined below)
# should probably be either 'xyz.native' or 'xyz.byte'
xyz: xyz.byte

# Default target for Eclipse
all: xyz

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
DOC_DIR := doc
BLD_DIR := _build

# Base invokation of ocamlbuild
OCAMLBUILD := ocamlbuild -no-links -use-menhir -menhir "menhir -v" -Xs $(EXCL_DIRS)

xyz.byte: prepare
	@echo "*** Building xyz.byte"
	@$(OCAMLBUILD) $(SRC_DIR)/main.byte
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.byte xyz.byte
	@ln -sf xyz.byte xyz

xyz.native: prepare
	@echo "*** Building xyz.native"
	@$(OCAMLBUILD) $(SRC_DIR)/main.native
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.native xyz.native
	@ln -sf xyz.native xyz

xyz.debug: prepare
	@echo "*** Building xyz.debug"
	@$(OCAMLBUILD) $(SRC_DIR)/main.d.byte
	@ln -sf _build/$(SRC_DIR)/main.d.byte xyz.debug

xyz.profile: prepare
	@echo "*** Building xyz.profile"
	@$(OCAMLBUILD) $(SRC_DIR)/main.p.native
	@ln -sf _build/$(SRC_DIR)/main.p.native xyz.profile

xyz.top: prepare
	@echo "*** Building xyz.top"
	@echo $(MODS:%=$(SRC_DIR)/%) > $(SRC_DIR)/main.mltop
	@$(OCAMLBUILD) $(SRC_DIR)/main.top
	@rm -f $(SRC_DIR)/main.mltop
	@ln -sf _build/$(SRC_DIR)/main.top xyz.top

htdoc: xyz.byte
	@echo "*** Building $(DOC_DIR)"
	@mkdir -p $(DOC_DIR)
	@ocamldoc -d $(DOC_DIR) -I $(BLD_DIR)/$(SRC_DIR) \
	  -html $(MODS:%=$(BLD_DIR)/$(SRC_DIR)/%.ml)
	@echo "Open $(DOC_DIR)/index.html to browse the documentation."

clean:
	$(OCAMLBUILD) -clean
	rm -rf $(DOC_DIR)
	rm -f xyz xyz.byte xyz.native xyz.top xyz.debug xyz.profile
	rm -f $(SRC_DIR)/main.mltop
	rm -f .ocamlinit
	rm -f parser.automaton

## Some specially generated files
.ocamlinit:
	@echo "#directory \"$(BLD_DIR)/$(SRC_DIR)\";;" > .ocamlinit

parser.automaton:
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/parser.automaton parser.automaton

prepare: .ocamlinit parser.automaton
