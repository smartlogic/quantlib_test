# Custom QuantLib C++ Code accessed via Ruby and FFI

1. `bundle install`
1. install quantlib `brew install quantlib`
1. install boost (was installed by brew if you used that)
1. `make all`
1. `ruby test.rb`

# Walkthrough of files provided

## test_quantlib.h

Declares the function that FFI will invoke, as well as the return value 
structure that the function will return.

It also defines them as external C functions so that they are not name mangled 
by the C++ compiler, so that FFI can invoke them.

## test_quantlib.cc

The sample quantlib code, implementation of the function defined in the header 
file

## quantlib.rb

The FFI module that attaches to the shared library made by the linker.

## test.rb

Uses the FFI module to invoke the shared library

# Walkthrough of generated files

## test_quantlib.o

Compiled output file from the test_quantlib.cc compilation

## test_quantlib.so

The output of the linking phase, the test_quantlib.o file linked to the boost 
and quantlib libraries, and created as a shared library file that can be loaded 
by FFI

# What you see when you run test.rb

The Ruby code passes in 2 params, just to prove that it works. They are output 
by the C++ code to stdout.

The majority of the ouptut is output to stdout from the C++ code.

The seconds spent in the C++ code for quantlib is recorded in the C++ code and 
passed back in the ReturnValue struct. It is then output by Ruby.

