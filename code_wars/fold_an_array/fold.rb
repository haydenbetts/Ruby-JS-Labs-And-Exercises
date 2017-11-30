require 'pry'

def fold_array(array, runs)
  new_array = []
  
  if array.length == 1
    return array
  elsif array.length % 2 == 0 # array is even
    for i in 0..((array.length/2) - 1)
      idex = array.length - 1 - i
      new_array << array[i] + array[idex]
    end
  else
    for i in 0..((array.length/2.0).floor - 1)
      idex = array.length - 1 - i
      new_array << array[i] + array[idex]
     end
      # add the middle element
      new_array << array[(array.length / 2.0).floor]
   end

   if runs - 1 > 0
     fold_array(new_array, runs - 1)
   else
     new_array
    end
end   

fold_array([1,2,3,4],1)