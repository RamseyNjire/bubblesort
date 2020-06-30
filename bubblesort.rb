#[5, 4, 3, 2, 1]
#sets counter to false
#set value of length as array.length - 1
#[5, 4, 3, 2, 1]
#[4, 5, 3, 2, 1]
#change counter to true
#[4, 3, 5, 2, 1]
#changes counter to true
#[4, 3, 2, 5, 1]
#changes counter to true
#[4, 3, 2, 1, 5]
#changes counter to true



def bubblesort(array)
  length = array.length - 1
  loop do 
    counter = false
    length.times do |n|
      if array[n] > array[n + 1]
        array[n], array[n + 1] = array[n + 1], array[n]
        counter = true
      end
    end
    break if not counter
  end
  array
end


#bubblesort_by pseudocode
#this array accepts a block, raise an error if no block is given
#the block should have two arguments that will be compared against each other
#use yield to accept this 
#after comparison, check if the argument is negative, if so, the element on the left is smaller
#if positive, the element on the left is bigger
#if 0, they are equal
#return the array

def bubble_sort_by(array)
  return "no block is given" unless block_given?
  x = array.length
  loop do 
    counter = false
    (x-1).times do |n|
      if yield(array[n], array[n+1]).positive?
        counter = true
        array[n], array[n+1]= array[n+1], array[n]        
      end
    end
    break unless counter
  end
  array 
end

p bubble_sort_by(["hi","hello","hey"]){ |left,right| left.length - right.length}
p bubblesort([5, 4, 3, 2, 1])

