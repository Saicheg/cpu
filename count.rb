require 'pry'

commands = <<COMM
3, 8, 9
20, 50
20, 50, 18, 10, 11
10, 8, 9
20, 50
20, 50, 18, 10, 11
10, 27, 28
5, 8, 9
20, 50
20, 50, 18, 10, 11
10, 8, 9
20, 50
20, 50, 18, 10, 11
10, 29, 30
COMM


puts commands.split("\n").flat_map{|str| str.split(",") }.map(&:lstrip).each_with_object(Hash.new(0)) {|e, h| h[e] += 1}
