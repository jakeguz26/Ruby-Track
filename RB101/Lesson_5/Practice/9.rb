arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p arr.map! { |x| x.sort! {|a, b| b <=> a }}