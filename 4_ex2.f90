!
!  SourceFile2.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  10/4/2019 2:35:45 PM
!

program spray
implicit none
integer :: t, h, v
logical :: B



print*, "온도, 상대습도, 풍속 : "
read*, t, h, v


B=(t>=30 .and. h>15 .and. h<35 .and. v<=5)
PRINT*, B
end program spray