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


p bubblesort([5, 4, 3, 2, 1])

