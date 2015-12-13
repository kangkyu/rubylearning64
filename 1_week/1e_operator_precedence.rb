y = false
z = true

x = y or z
puts x
=begin
`x = y` does two things assigns x with y value (which is false object) and returns false (which is now value of x). Then, the expression does `false or z` so it does `z` and return its value true.
`puts x` returns nil but does print x out as string "false" [Kernel#puts](http://ruby-doc.org/core-2.2.3/Kernel.html#method-i-puts)
=end

(x = y) or z
puts x
=begin
does not change precedence from above expression. it does `x = y` first, and then `false or z` next.
=end

x = (y or z)
puts x
=begin
it does `y or z` first. If y false, it does `z` which returns true. so x should be assigned as true.
=end
