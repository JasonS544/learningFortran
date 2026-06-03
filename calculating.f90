program calculating
implicit none
!Parameters needed to calculate:
!Semi Major Axis, Semi Minor Axis, Eccentricity  
use matrixArthimetric
  
REAL(8), PARAMETER :: MU = 3.986004418D+14   ! m^3/s^2

REAL(8) :: r(3), v(3), h(3), uVecPos(3)
real:: u

DATA r / 6878.000D+3, 0.000D+3, 0.000D+3 /   ! km -> m
DATA v / 0.000D0,   10000.000D0,   500.000D0 /   ! m/s
real :: h(3) = crossProduct(r, v)
call uVectorize(r, u, uVecPos)
real :: eVec(3) = 1/MU*(crossProduct(v, h)) - uVecPos
real :: cosRatio = h(3)/SQRT(h(1)**2 + h(2)**2 + h(3)**2)

print *, 'The position vector is:', r(1), 'i +', r(2), 'j +', r(3), 'k'
print *, 'The velocity vector is:', v(1), 'i +', v(2), 'j +', v(3), 'k'

real :: elipson = (v(1)**2 + v(2)**2 + v(3)**2) / 2 - MU / sqrt(r(1)**2 + r(2)**2 + r(3)**2)

print *,"semi-major axis is:", -MU / 2*elipson
print *, "ecentricity is:", SQRT(eVec(1)**2 + eVec(2)**2 + eVec(3)**2)
print *, "inclination is:", ACOS(cosRatio)*180/3.1415926535897932384626433832795


contains
    real function crossProduct(a, b)
    implicit none
        real :: a(3), b(3)
        crossProduct = [(a(2)*b(3) - a(3)*b(2)), &
                        (a(3)*b(1) - a(1)*b(3)), &
                        (a(1)*b(2) - a(2)*b(1))]
    end function crossProduct
    subroutine uVectorize(vec, u, uVec)
        implicit none
        real, intent(in)::vec(3)
        real, intent(out)::u
        real, intent(out)::uVec(3)
        real :: vec(3)
        u = sqrt(vec(1)**2 + vec(2)**2 + vec(3)**2)
        uVec = vec / u
    end subroutine uVectorize
  
end program calculating