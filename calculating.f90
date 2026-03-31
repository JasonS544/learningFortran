program calculating
implicit none
  real :: x,y
  !Array Trials Below:
  real :: arr(5)
  real :: posVector(2)
  arr = [1, 2, 3, 4, 5]
  posVector = [3.0, 4.0]
  
  print *, 'The elements of the array are:', arr(1:5)
  print *, 'The magnitude of the position vector is:', sqrt(posVector(1)**2 + posVector(2)**2)
  print *, 'The poition vector in unit vector form is: r = ', posVector(1), "i + ", posVector(2), " j"
  !End of Array Trials
  print *, "Enter two real numbers:"
  read(*,*) x, y
  
  print *, 'The sum of the two numbers is:', x + y
  print *, 'The product of the two numbers is:', x * y
  
end program calculating