require 'davenport'

puts "Hola"

pg = Davenport::PreferenceGraph.new(4)
pg.add_preference([1, 3, 2, 4]);
pg.add_preference([1, 2, 2, 4]);
pg.add_preference([2, 1, 3, 4]);
pg.add_preference([1, 3, 2, 4]);

puts pg.davenport.inspect
