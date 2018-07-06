# b_n = 1 if the binary representation of n contains no block of consecutive 0s of odd length;
# b_n = 0 otherwise;

# outputs binary number given integer

def sequencer(number)
  baum_sweet = []
  for i in 0..number
    baum_sweet << zero_or_one(i)
  end
  puts "#{baum_sweet.join()}"
end

def zero_or_one(decimal_number)
  # save an array of all groups of consecutive zeros in binary number
  array_of_zeros = int_to_binary(decimal_number).scan(/(0{1,})/)


  if array_of_zeros
    array_of_zeros.any? {|n| n.length%2 != 0} ? 0 : 1
  else
    1
  end
end

def int_to_binary(int, bin_array = [])
  if int == 0
    bin_array.join()
  elsif int == 1
    bin_array.unshift(1)
    bin_array.join()
  else
    bin_array.unshift(int%2)
    int_to_binary(int/2, bin_array)
  end
end

sequencer(20)

# return array with all groups of zeros in a binary number
#zero_array = (0{1,})\.match(int_to_binary(15, []))

# return true if any members of an array have odd length
#zero_array.detect {|n| n.length%2 =! 0}
