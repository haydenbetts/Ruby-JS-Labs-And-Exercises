def off(switches)
  
  switches_array = Array.new(switches, "on")
  
  counter = 1
  num_offs = []
  
  # each step of this loop represents an entire traveral of the array
  while counter < switches
  
    num_off = 0
  
    # each step of this loop reprsents one change to the array
    (-1..switches_array.length - 1).step(counter) do |i|
     
       if switches_array[i] == "on"
          switches_array[i] = "off"
       elsif switches_array[i] == "off"
          switches_array[i] = "on"
       end
         
      end
    
   p switches_array 
    
   switches_array.each do |switch|
     num_off += 1 if switch == "off"
   end
   
  num_offs << num_off
    
  counter += 1
  end
  
  return num_offs
  
end
