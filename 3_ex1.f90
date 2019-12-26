! 
!     Copyright (c) 2013, NVIDIA CORPORATION.  All rights reserved.
!
! NVIDIA CORPORATION and its licensors retain all intellectual property
! and proprietary rights in and to this software, related documentation
! and any modifications thereto.  Any use, reproduction, disclosure or
! distribution of this software and related documentation without an express
! license agreement from NVIDIA CORPORATION is strictly prohibited.
! 

program ex1

real x, y, v, z, t
print*, "임의의 속도(v),각도(z),시간(t)를 입력하시오."
Read*, v, z, t 
x=v*t*cos(z*(3.14/180))
y=v*t*sin(z*(3.14/180))-16*t**(2.0)
print*, "x=",x,"y=",y

end program ex1

