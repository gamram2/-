!
!  SourceFile1.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  10/4/2019 1:50:30 PM
!

program leap_year
implicit none 

integer :: y
print*, "���� :"
read *, y

IF (mod(y,4) ==0 .and. mod(y,100)==0 .or. mod(y,400)==0) then
 print*, "Leap year"
else
 print*, "Normal year"
end if



end program leap_year
