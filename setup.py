'''
Created on Sep 24, 2011

@author: sean
'''

from setuptools import setup, find_packages, Extension
from os.path import join, isfile
import os
import sys
from warnings import warn

try:
    from Cython.Distutils.build_ext import build_ext
    cmdclass = {'build_ext': build_ext}
except ImportError:
    cmdclass = { }
    

if 'darwin' in sys.platform:
    flags = dict(extra_link_args=['-framework', 'OpenCL'])
else:
    flags = dict(libraries=['OpenCL'], include_dirs=['/usr/include/CL'], library_dirs=['/usr/lib'])

extension = lambda name, ext: Extension('.'.join(('opencl', name)), [join('opencl', name + ext)], **flags)
pyx_extention_names = [name[:-4] for name in os.listdir('opencl') if name.endswith('.pyx')]

if cmdclass:
    ext_modules = [extension(name, '.pyx') for name in pyx_extention_names]
else:
    warn("Cython not installed using pre-cythonized files", UserWarning, stacklevel=1)
    for name in pyx_extention_names:
        required_c_file = join('opencl', name + '.c')
        if not isfile(join('opencl', name + '.c')):
            raise Exception("Cython is required to build a c extension from a PYX file (solution get cython or checkout a release branch)")
    
    ext_modules = [extension(name, '.c') for name in pyx_extention_names]

setup(
    name='OpenCL',
    cmdclass=cmdclass,
    ext_modules=ext_modules,
    version='0.1.1',
    author='Enthought, Inc.',
    author_email='srossross@enthought.com',
    url='srossross.github.com/oclpb',
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