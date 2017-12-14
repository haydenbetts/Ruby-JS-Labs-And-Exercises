# outputs binary number given integer

def int_to_binary(int, bin_array)

  if int == 1
    bin_array << 1
    puts "#{bin_array.join()}"
  else
    bin_array << int%2
    int_to_binary(int/2, bin_array)
  end
end

int_to_binary(15, [])
