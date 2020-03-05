.PHONY: goLite_transpiler test clean

SRC_DIR := .
BUILD_DIR := _build
TEST_DIR := test

OCAMLBUILD := ocamlbuild -no-links -use-menhir -menhir "menhir -v"

goLite_transpiler:
	@echo "Building Transpiler..."
	@$(OCAMLBUILD) $(SRC_DIR)/main.byte
	@ln -sf $(BUILD_DIR)/$(SRC_DIR)/main.byte goLite_transpiler

test:
	@echo "Building Tests"
	@$(OCAMLBUILD) -I "$(TEST_DIR)/" -pkg oUnit $(SRC_DIR)/test.byte
	@echo "*** Running Tests"
	@ln -sf $(BUILD_DIR)/$(SRC_DIR)/test.byte goLite_transpiler_test
	./goLite_transpiler_test

clean:
	$(OCAMLBUILD) -clean
	rm -f goLite_transpiler goLite_transpiler_test *.out ./*.cpp
