!
!  ex3.f90
!
!  Free-Format Fortran Source File 
!  Generated by PGI Visual Fortran(R)
!  11/29/2019 4:11:28 PM
!
program ex_3
implicit none
integer::i,lines=0,sum_day=0
real::variance
integer,dimension(:),allocatable::year,month,dayy
real,dimension(:),allocatable::m_temp,m_wd,m_ws
open (12,file='C:\Users\user\Documents\daily_mean.txt')
 read (12,*)
do
 read (12,*,end=11)
 lines=lines+1
end do
11 continue
i=lines
allocate (year(i),month(i),dayy(i),m_temp(i),m_wd(i),m_ws(i))
rewind(12)
 read (12,*)
do i=1,lines
 read (12,*) year(i),month(i),dayy(i),m_temp(i),m_wd(i),m_ws(i)
end do
variance=real(sum(m_temp**2)/3650)-real((sum(m_temp)**2)/3650**2)
!print*,sum(m_temp**2)
print*,'Mean = ',real(sum(m_temp)/3650)
print*,'Variance = ',variance
print*,'Standard Deviation = ',variance**(0.5)
end program ex_3