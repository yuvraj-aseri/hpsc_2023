program arraypassing1

        implicit none
        real(kind=8) ::y,x(3)
        !real(kind=8),dimension(3)::x
        integer :: i,j

        x = (/1,2,3/)
        y = 2 
        i = 3
        j = 4

        call setvals(x)
        print *,"x = ",x
        print *,y,i,j
end program arraypassing1


subroutine setvals(a)
        implicit none
        real(kind=8), dimension(3),intent(inout)::a
        integer :: i 
        do i =1,3
                a(i) = 5
        end do
end subroutine setvals
