require 'pry'

commands = <<COMM
21, 22
8, 9, 23
7, 20, 63
7, 10, 11, 18, 20, 63
1, 2, 10
21, 22
8, 9, 23
8, 20, 63
7, 10, 11, 18, 20, 63
3, 4, 10
21, 22
8, 9, 23
8, 20, 63
7, 10, 11, 18, 20, 63
3, 4, 10
25
COMM


puts commands.split("\n").flat_map{|str| str.split(",") }.map(&:lstrip).each_with_object(Hash.new(0)) {|e, h| h[e] += 1}
