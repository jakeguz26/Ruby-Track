def compute(arg)
  return 'Does not compute.' unless block_given?
  yield(arg)
end

p compute(5) { |arg| arg + 3 } == 8
p compute('a') { |arg| arg + 'b' } == 'ab'
p compute('hello world') == 'Does not compute.'