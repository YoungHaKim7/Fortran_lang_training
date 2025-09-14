module m_matrix
  implicit none
  private

  type, public :: t_matrix(rows, cols, k)
     integer, len :: rows, cols
     integer, kind :: k = kind(0.0)   ! default kind for real
     real(kind=k), dimension(rows, cols) :: values
  end type t_matrix

end module m_matrix

program test_matrix
  use m_matrix
  implicit none

  type(t_matrix(rows=5, cols=5)) :: m
  integer :: i, j

  ! Initialize matrix with some values
  do i = 1, m%rows
     do j = 1, m%cols
        m%values(i, j) = real(i * j, kind=kind(0.0))
     end do
  end do

  ! Print matrix
  print *, "Matrix values:"
  do i = 1, m%rows
     print "(5F8.2)", m%values(i, :)
  end do

end program test_matrix
