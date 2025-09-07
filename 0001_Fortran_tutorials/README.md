# 공식 홈페이지fortran
- https://fortran-lang.org/learn/quickstart/

# (영상모아보기) [Fortran Tuto 1] Hello World !
Cyprien Rusu
- https://youtube.com/playlist?list=PLvkU6i2iQ2fprrVmmkNP_V36mh0BMnS5L&si=PhUxpWA_e9zl07Tc


# Fortran - First Impression [Programming Languages Episode 20]
Mike Shah
- https://youtu.be/tWKF0yhPfzg?si=ci38kOndXtrx1QPf

# C보다 빠른 Fortran 최적화의 비밀 (AI, GPU, 고성능 컴퓨팅 도구)
개발자방16
- https://youtu.be/uvLlzPtGr0Q?si=Iufy79P3PRvjL3Yz


# justfile(Fortran)

```justfile
project_name := `basename "$(pwd)"`
# 
# which gfortran
gfortran_which := `which gfortran`

# Source and target directories
src_dir := "./src"
target_dir := "./target"

# Files
source := src_dir+"/hello.f90"
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
```
