def bubble_sort(array)
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

