#user.rb
load 'main.rb'
puts 'Решение при помощи блока:'
puts solve(0.0, 1.0, 1000, nil) { |x| Math.exp(x) / ( x + 1 ) }
puts 'Решенеи при помощи lambda'
func = ->(x) { Math.exp(x) / (x + 1) }
puts solve(0.0, 2.0, 1000, func)