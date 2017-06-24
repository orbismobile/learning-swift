# Makefile

all: chapter1 chapter2

chapter1: 1.1 1.2 1.3 1.4 1.5 1.6 1.7
chapter2: 2.1 2.2 2.3
chapter3: 3.1 3.2

run_chapter1: run_1.1 run_1.2 run_1.3 run_1.4 run_1.5 run_1.6 run_1.7
run_chapter2: run_2.1 run_2.2 run_2.3
run_chapter3: run_3.1 run_3.2 run_3.3 run_3.4

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
2.1:
	./compile-swift-file.sh chapter2/arrays.swift -o chapter2/compiled-arrays
2.2:
	./compile-swift-file.sh chapter2/dictionaries.swift -v -o chapter2/compiled-dictionaries
2.3:
	./compile-swift-file.sh chapter2/collection-iterations.swift -v -o chapter2/compiled-collection-iterations

3.1:
	./compile-swift-file.sh chapter3/structs.swift -v -o chapter3/compiled-structs
3.2:
	./compile-swift-file.sh chapter3/properties.swift -v -o chapter3/compiled-properties
3.3:
	./compile-swift-file.sh chapter3/methods.swift -v -o chapter3/compiled-methods
3.4:
	./compile-swift-file.sh chapter3/classes.swift -v -o chapter3/compiled-classes

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

run_2.1:
	./run-compiled-file.sh ./chapter2/compiled-arrays
run_2.2:
	./run-compiled-file.sh ./chapter2/compiled-dictionaries
run_2.3:
	./run-compiled-file.sh ./chapter2/compiled-collection-iterations

run_3.1:
	./run-compiled-file.sh ./chapter3/compiled-structs
run_3.2:
	./run-compiled-file.sh ./chapter3/compiled-properties
run_3.3:
	./run-compiled-file.sh ./chapter3/compiled-methods
run_3.4:
	./run-compiled-file.sh ./chapter3/compiled-classes

clean:
	rm -fr chapter1/compiled-*
	rm -fr chapter2/compiled-*
	rm -fr chapter3/compiled-*
