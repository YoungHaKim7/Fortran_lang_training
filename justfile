project_name := `basename "$(pwd)"`
# 
# which gfortran
gfortran_which := `which gfortran`

# Source and target directories
src_dir := "./src"
target_dir := "./target"

# Files
source := src_dir+"/*.f90"
target := target_dir+project_name

# link file
# link_obj := "src/carray.c"

# Common flags
# ldflags_common := "-pedantic -pthread -pedantic-errors -lm -Wall -Wextra -ggdb"

# Fortran(GCC) compile
r:
	rm -rf target
	mkdir -p target
	{{gfortran_which}} -o {{target_dir}}/{{project_name}} {{source}}
	{{target_dir}}/{{project_name}}
