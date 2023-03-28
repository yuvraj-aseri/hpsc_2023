program mysqrt
	implicit none
	real (kind = 8) :: x,y,sqrt_true
	real (kind=8), external :: sqrtNT
	x = 2.d0
	sqrt_true = sqrt(x)
	y = sqrtNT(x)    ! uses our sqrtNT function
!	y = sqrt(x)    ! uses our sqrtNT function
	print *,"x = ",x
	print *,"sqrt_true = ",sqrt_true
	print *,"sqrtNT = ",y
	print *,"error = ",sqrt_true - y	
         
end program mysqrt

! Function called sqrtNT(x) return sqrt using newton's method.
! return varibale get the name as function's name
function sqrtNT(x)
	implicit none
	real (kind = 8), intent(in) :: x    !function arguements
	real (kind=8) :: sqrtNT
	
	! local variable
	real (kind = 8) ::s,tol,s_prev,delta_s
	integer ::k, kmax
	kmax = 100
	s=1.d0
	tol=1.d-14
	
	do k=1,kmax
		s_prev = s
		s = 0.5*(s+x/s)
		delta_s = abs(s-s_prev)
		if ((delta_s/x)<tol) then
			exit
		endif
	enddo
	if (k >= kmax) then
		print *,"Newton method did not converged for kmax iterations; kmax=", kmax
	endif
     sqrtNT =s
end function sqrtNT
