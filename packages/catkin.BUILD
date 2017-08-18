package(default_visibility = ["//visibility:public"])

IMPORT_SHIM_CONTENT = """
from os.path import join
__path__.insert(0, join(__path__[0], 'python', 'catkin'))
execfile(join(__path__[0], '__init__.py'))
"""

genrule(
    name = 'import_shim',
    outs = ['__init__.py'],
    cmd = 'echo "{}" > $@'.format(IMPORT_SHIM_CONTENT),
)

# The catkin package does not itself follow the usual python catkin
# conventions, so we need to generate a custom import shim.
py_library(
    name = 'pylib',
    srcs = ['__init__.py'] + glob(['python/**/*.py']),
    imports = ['python'],
)
