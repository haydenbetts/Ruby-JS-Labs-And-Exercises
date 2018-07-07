require 'pry'

def balanced?(queue, stack = [])
    matching_brackets = {
                        "]" => "[",
                        "}" => "{",
                        ")" => "("
                    }

     if queue.length == 0 && stack.length == 0
        puts "YES"
    elsif ["[", "(", "{"].include?(queue[0]) 
        stack.push(queue.shift)
        balanced?(queue, stack)
    elsif matching_brackets[queue[0]] == stack.last
        queue.shift
        stack.pop
        balanced?(queue, stack)
    else
        puts "NO"
    end
end

# 5
# {()[][{}]} YES
# ({}{[]})({)} YES
# ()[] YES
# [()][{}]{[({})[]]} NOPE
# ((){)} YES

balanced?("{()[][{}]}".split(''))
balanced?("({}{[]})({)}".split(''))
balanced?("()[]".split(''))
balanced?("[()][{}]{[({})[]]}".split(''))
balanced?("((){)}".split(''))