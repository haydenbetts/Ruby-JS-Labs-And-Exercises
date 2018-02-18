require 'pry'

def encode(string, key)

  str_array = string.split("").map {|letter| letter.ord - 96}
  key_array = key.to_s.split("").map {|x| x.to_i}

  for i in 0..(str_array.length - 1)
    if key_array.length < (i + 1)
      str_array[i] += key_array[((i + 1) % key_array.length) - 1]
    else
      str_array[i] += key_array[i]
    end

    # return enciphered array
    str_array
  end

end
