from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

examples_extension = Extension(
    name="foo",
    sources=["foo.pyx"],
    libraries=["foo"],
    library_dirs=["lib"],
    include_dirs=["lib"]
)
setup(
    name="foo",
    ext_modules=cythonize([examples_extension])
)
