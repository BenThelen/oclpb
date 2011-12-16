'''
Created on Sep 24, 2011

@author: sean
'''

from setuptools import setup, find_packages, Extension
from Cython.Distutils.build_ext import build_ext

import numpy
include_dirs = numpy.get_include()

copencl = Extension('opencl.copencl', ['opencl/copencl.pyx'], extra_link_args=['-framework', 'OpenCL'], include_dirs=[include_dirs])
kernel = Extension('opencl.kernel', ['opencl/kernel.pyx'], extra_link_args=['-framework', 'OpenCL'], include_dirs=[include_dirs])
errors = Extension('opencl.errors', ['opencl/errors.pyx'], extra_link_args=['-framework', 'OpenCL'], include_dirs=[include_dirs])
cl_mem = Extension('opencl.cl_mem', ['opencl/cl_mem.pyx'], extra_link_args=['-framework', 'OpenCL'], include_dirs=[include_dirs])
context = Extension('opencl.context', ['opencl/context.pyx'], extra_link_args=['-framework', 'OpenCL'], include_dirs=[include_dirs])
queue = Extension('opencl.queue', ['opencl/queue.pyx'], extra_link_args=['-framework', 'OpenCL'], include_dirs=[include_dirs])
clgl = Extension('opencl.clgl', ['opencl/clgl.pyx'], extra_link_args=['-framework', 'OpenCL'], include_dirs=[include_dirs])

type_formats = Extension('opencl.type_formats', ['opencl/type_formats.pyx'], include_dirs=[include_dirs])

setup(
    name='Clyther',
    cmdclass={'build_ext': build_ext},
    ext_modules=[type_formats, copencl, kernel, cl_mem, context, queue, errors, clgl],
    version='0.1',
    author='Enthought, Inc.',
    author_email='srossross@enthought.com',
    url='https://github.com/srossross/Magenta-Kangaroo',
    classifiers=[c.strip() for c in """\
        Development Status :: 5 - Production/Stable
        Intended Audience :: Developers
        Intended Audience :: Science/Research
        License :: OSI Approved :: BSD License
        Operating System :: MacOS
        Operating System :: Microsoft :: Windows
        Operating System :: OS Independent
        Operating System :: POSIX
        Operating System :: Unix
        Programming Language :: Python
        Programming Language :: OpenCL
        Topic :: Scientific/Engineering
        Topic :: Software Development
        Topic :: Software Development :: Libraries
        """.splitlines() if len(c.strip()) > 0],
    description='Open CL Python bindings',
    long_description=open('README.rst').read(),
    license='BSD',
    packages=find_packages(),
    platforms=["Windows", "Linux", "Mac OS-X", "Unix", "Solaris"],
)
