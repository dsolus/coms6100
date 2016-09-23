!homework_Fortran2.f90
!Daniel Solus
!This program calculates the forward and backward sums of the inverses of i.
!using both single and double precision.

program forward_backward_sums
    !always use implicit none
    implicit none
    !for the integer variables used in the counter
    integer, parameter :: ikind = selected_int_kind(9)
    integer (kind = ikind) :: i, j, k, n
    !for single precision real variable
    integer, parameter :: sgle = selected_real_kind(6,37)
    real (kind = sgle) :: sgle_sum1, sgle_sum2 
    !for double precision real variable
    integer, parameter :: dble = selected_real_kind(15,307)
    real (Kind = dble) :: dble_sum1, dble_sum2

    !forward single precision
    sgle_sum1 = 0.0
    do i = 1, 10**9, 1 
        sgle_sum1 = sgle_sum1 + (1.0/i)
    enddo
    print*,'single precision, forward sum: ' ,sgle_sum1,' (after loop)'

    !backward single precision
    sgle_sum2 = 0.0
    do j = 10**9, 1, -1 
        sgle_sum2 = sgle_sum2 + (1.0/j)
    enddo
    print*,'single precision, backward sum: ' ,sgle_sum2,' (after loop)'

    !forward double precision
    dble_sum1 = 0.0
    do k = 1, 10**9, 1 
        dble_sum1 = dble_sum1 + (1.0/k)
    enddo
    print*,'double precision, forward sum: ' ,dble_sum1,' (after loop)'

    !backward double precision
    dble_sum2 = 0.0
    do n = 10**9, 1, -1 
        dble_sum2 = dble_sum2 + (1.0/n)
    enddo
    print*,'double precision, backward sum: ' ,dble_sum2,' (after loop)'

end program forward_backward_sums

