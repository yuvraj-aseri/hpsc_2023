program loop1
        implicit none
        integer, parameter ::n =1000
        real (kind=8),dimension(n) :: x,y
        integer ::i,j

        do i =1,n
                x(i) = 3.d0*i
        enddo

        do j=1,n
                y(j) = 2.d0*x(j)
        enddo

        print *,"Last Y computed: ",y(n)

end program loop1
