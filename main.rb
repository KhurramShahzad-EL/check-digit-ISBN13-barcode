isbn = 978014300723
total = 0
isbn.digits.reverse.each_with_index.each do |number, index|
  total += (number*1) if (index+1).odd?
  total += (number*3) if (index+1).even?
end

mod                       = total %10
number_after_subtract_mod = 10 - mod
isbn = (isbn.to_s + number_after_subtract_mod.to_s).to_i
