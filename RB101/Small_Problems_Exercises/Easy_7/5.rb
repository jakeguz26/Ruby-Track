def staggered_case(str)
  new_str = str.chars.map! do |x|
    if str.index(x).even?
      x.upcase
    elsif str.index(x).odd?
      x.downcase
    end
    
  end
  p new_str.join
end



staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'