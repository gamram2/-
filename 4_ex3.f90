!
!  SourceFile3.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  10/4/2019 2:59:27 PM
!

program cost

integer :: e 
real :: r, T, D, F, u 
print*,"Equips, U_cost : "
read*, e, u
select case (e)
 case(1:9)
  if (u>=0 .and. u<=10.00) then 
   r=0.0
  else if (u>=10.01 .and. u<=100.00) then
   r=0.02
  else
   r=0.05
  end if
 case(10:19)
  if (u>=0 .and. u<=10.00) then 
   r=0.05
  else if (u>=10.01 .and. u<=100.00) then
   r=0.07
  else
   r=0.09
  end if
 case(20:49)
  if (u>=0 .and. u<=10.00) then 
   r=0.09
  else if (u>=10.01 .and. u<=100.00) then
   r=0.15
  else
   r=0.21
  end if
 case(50:99)
  if (u>=0 .and. u<=10.00) then 
   r=0.14
  else if (u>=10.01 .and. u<=100.00) then
   r=0.23
  else
   r=0.32
  end if
 case(100:)
  if (u>=0 .and. u<=10.00) then 
   r=0.21
  else if (u>=10.01 .and. u<=100.00) then
   r=0.32
  else 
   r=0.43
  end if
end select 
print*, "T_cost : ", e*u, "D_cost : " , e*u*r, "F_cost : ", (e*u-(e*u*r))
end program cost