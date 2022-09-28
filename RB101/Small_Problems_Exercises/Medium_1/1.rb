# P: my input will be a list of elements
#    my output will be a list of elements
#    - I will be taking the first element of the input and moving it to the last index
#    - the og array will not be modified 

# D/A: my data structure will be arrays 
=begin
Algorthm/psuedo code
  - define a mehod that takes one agrument
  - the one argument will be a list
  - return a new list with the first index moved to the last
=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end


x = [1, 2, 3]
p rotate_array(x).object_id
p x.object_id