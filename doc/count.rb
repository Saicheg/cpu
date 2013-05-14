require 'pry'

commands = <<COMM
27, 8, 9
20, 48
18, 10, 11, 20, 48
10, 19, 56
29, 8, 9
20, 19, 10, 48, 49
18, 10, 11, 20, 48
10, 19, 57
18, 10, 11, 62
27, 8, 9
20, 19, 10, 48, 49
25
COMM


puts commands.split("\n").flat_map{|str| str.split(",") }.map(&:lstrip).each_with_object(Hash.new(0)) {|e, h| h[e] += 1}
