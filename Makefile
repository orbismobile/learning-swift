# Makefile

all: chapter1

chapter1: 1.1 1.2 1.3 1.4 1.5 1.6 1.7
run_chapter1: run_1.1 run_1.2 run_1.3 run_1.4 run_1.5 run_1.6 run_1.7

1.1:
	./compile-swift-file.sh chapter1/hi.swift -o chapter1/compiled-hi
1.2:
	./compile-swift-file.sh chapter1/syntax.swift -o chapter1/compiled-syntax
1.3:
	./compile-swift-file.sh chapter1/datatypes.swift -o chapter1/compiled-datatypes
1.4:
	./compile-swift-file.sh chapter1/datastructure.swift -o chapter1/compiled-datastructure
1.5:
	./compile-swift-file.sh chapter1/flowcontrol.swift -v -o chapter1/compiled-flowcontrol
1.6:
	./compile-swift-file.sh chapter1/optionals.swift -v -o chapter1/compiled-optionals
1.7:
	./compile-swift-file.sh chapter1/guard.swift -v -o chapter1/compiled-guard

# for run into images
run_1.1:
	./run-compiled-file.sh ./chapter1/compiled-hi
run_1.2:
	./run-compiled-file.sh ./chapter1/compiled-syntax
run_1.3:
	./run-compiled-file.sh ./chapter1/compiled-datatypes
run_1.4:
	./run-compiled-file.sh ./chapter1/compiled-datastructure
run_1.5:
	./run-compiled-file.sh ./chapter1/compiled-flowcontrol
run_1.6:
	./run-compiled-file.sh ./chapter1/compiled-optionals
run_1.7:
	./run-compiled-file.sh ./chapter1/compiled-guard

clean:
	rm -fr chapter1/compiled-*
