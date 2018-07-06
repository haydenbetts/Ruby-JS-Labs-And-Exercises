def balanced?(array)

    matching_brackets = {"]" => "[",
                        "}" => "{",
                         ")" => "("}

    if array.length === 0
        puts "YES"
    elsif array.length % 2 != 0
        puts "NO"
    elsif array.length >= 2 && array[0] == matching_brackets[array[1]]
        binding.pry
        balanced?(array[2.. -1])
    else
        if array.first == matching_brackets[array.last]
            array.shift
            array.pop
            balanced?(array)
        else
            puts "NO"
        end
    end
end

# 5
# {()[][{}]} YES
# ({}{[]})({)} YES
# ()[] YES
# [()][{}]{[({})[]]} NOPE
# ((){)} YES