program mysqrtNT
        implicit none
        real(kind=8) :: x,y,sqrt_True
        integer :: iter
        logical :: debug
        x = 2.0
        sqrt_true = sqrt(x)
        debug = .true.
        iter = 100
        call sqrtNT(x,iter,debug)   ! uses function below
        print *, "x = ",x
        print *, "sqrt_true  = ",sqrt_true
        print *, "sqrtNT = ",x
        print *, "error     = ",x - sqrt_true
end program mysqrtNT


subroutine sqrtNT(x,iter,debug)
        implicit none
        real (kind = 8),intent(inout):: x
        integer,intent(in) :: iter
        logical,intent(in) :: debug
        real(kind=8):: s,s_prev,tol,delta_s
        integer :: i
        save
        s = 1
        tol = 1.d-14
        do i=1,iter
                s_prev = s
                s = 0.5*(s+x/s)
                delta_s = abs(s- s_prev)
                if (debug .eqv. .true.) then
                        print *, "at itertaion no. ", i, "vaue of sqrt is ",s
                end if
                if (delta_s < tol) then
                        print *,"sqrt using Newton method converges at interation no ", i
                        exit
                end if
         end do
         
end subroutine sqrtNT

       


