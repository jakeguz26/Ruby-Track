def swap_name(str)
  p str.split.reverse.join(", ")
end

swap_name('Joe Roberts') == 'Roberts, Joe'