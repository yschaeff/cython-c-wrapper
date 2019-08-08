LIB_DIR = lib

default: foo

foo: setup.py foo.pyx $(LIB_DIR)/libfoo.a
	python3 setup.py build_ext --inplace && rm -f foo.c && rm -Rf build

$(LIB_DIR)/libfoo.a:
	make -C $(LIB_DIR) libfoo.a

clean:
	rm -f *.so
	$(MAKE) -C lib clean
