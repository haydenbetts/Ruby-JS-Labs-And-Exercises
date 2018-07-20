
def reverse_longer_than_five(string)
    words = string.split(" ")

    reversed = words.collect do |word|
        if !word[-1].match(/\w/) && word.length >= 5
            # you could write your own reverse function.. b why
            word[0..-2].reverse + word[-1]
        elsif word.length >=5
            word.reverse
        else
            word
        end
    end

    return reversed.join(" ")

end

# works, but uses a "sandwich method"
# would be better to use higher order iterator like collect
def reverse_word(word)

    reversed = ""
    counter = word.length - 1
    while counter >= 0 
        reversed += word[counter]
        counter -= 1
    end

    reversed
end

reverse("this is a another test")