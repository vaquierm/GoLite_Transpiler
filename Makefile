############################################################
## Makefile for the goLite_compliter grammar
## ---------------------------------------------------------
##
## Usage:
##   make [target]
##
## Targets:
##   goLite_compliter.byte     -- build the example as ocaml byte code (default target)
##   goLite_compliter.native   -- build the example as native
##   goLite_compliter.top      -- build an interactive toplevel
##   goLite_compliter.debug    -- build the example with debugging symbols
##   goLite_compliter.profile  -- build the example with profiling instrumentation
##   htdoc          -- generate documentation (in doc/index.html)
##   clean          -- clean up all build related files
##
############################################################

# (just ignore this thing...)
.PHONY: default all \
        goLite_compliter.byte goLite_compliter.native goLite_compliter.top goLite_compliter.debug goLite_compliter.profile \
        htdoc clean prepare findlib

# Default build target (defined below)
# should probably be either 'goLite_compliter.native' or 'goLite_compliter.byte'
goLite_compliter: goLite_compliter.byte

# Default target for Eclipse
all: goLite_compliter

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

goLite_compliter.byte: prepare
	@echo "*** Building goLite_compliter.byte"
	@$(OCAMLBUILD) $(SRC_DIR)/main.byte
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.byte goLite_compliter.byte
	@ln -sf goLite_compliter.byte goLite_compliter

goLite_compliter.native: prepare
	@echo "*** Building goLite_compliter.native"
	@$(OCAMLBUILD) $(SRC_DIR)/main.native
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/main.native goLite_compliter.native
	@ln -sf goLite_compliter.native goLite_compliter

goLite_compliter.debug: prepare
	@echo "*** Building goLite_compliter.debug"
	@$(OCAMLBUILD) $(SRC_DIR)/main.d.byte
	@ln -sf _build/$(SRC_DIR)/main.d.byte goLite_compliter.debug

goLite_compliter.profile: prepare
	@echo "*** Building goLite_compliter.profile"
	@$(OCAMLBUILD) $(SRC_DIR)/main.p.native
	@ln -sf _build/$(SRC_DIR)/main.p.native goLite_compliter.profile

goLite_compliter.top: prepare
	@echo "*** Building goLite_compliter.top"
	@echo $(MODS:%=$(SRC_DIR)/%) > $(SRC_DIR)/main.mltop
	@$(OCAMLBUILD) $(SRC_DIR)/main.top
	@rm -f $(SRC_DIR)/main.mltop
	@ln -sf _build/$(SRC_DIR)/main.top goLite_compliter.top

htdoc: goLite_compliter.byte
	@echo "*** Building $(DOC_DIR)"
	@mkdir -p $(DOC_DIR)
	@ocamldoc -d $(DOC_DIR) -I $(BLD_DIR)/$(SRC_DIR) \
	  -html $(MODS:%=$(BLD_DIR)/$(SRC_DIR)/%.ml)
	@echo "Open $(DOC_DIR)/index.html to browse the documentation."

clean:
	$(OCAMLBUILD) -clean
	rm -rf $(DOC_DIR)
	rm -f goLite_compliter goLite_compliter.byte goLite_compliter.native goLite_compliter.top goLite_compliter.debug goLite_compliter.profile
	rm -f $(SRC_DIR)/main.mltop
	rm -f .ocamlinit
	rm -f parser.automaton

## Some specially generated files
.ocamlinit:
	@echo "#directory \"$(BLD_DIR)/$(SRC_DIR)\";;" > .ocamlinit

parser.automaton:
	@ln -sf $(BLD_DIR)/$(SRC_DIR)/parser.automaton parser.automaton

prepare: .ocamlinit parser.automaton
