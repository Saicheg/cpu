require 'pry'

commands = <<COMM
27, 8, 9
20, 50
20, 50, 18, 10, 11
28, 8, 9
20, 19, 48, 49
25
COMM


puts commands.split("\n").flat_map{|str| str.split(",") }.map(&:lstrip).each_with_object(Hash.new(0)) {|e, h| h[e] += 1}
