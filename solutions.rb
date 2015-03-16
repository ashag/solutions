def check(p)
  l = 0
  r = 0
  p.each_char do |char|
   if char == "("
    l += 1
   elsif char == ")"
    r +=1
   end
  end
  return "yes" if l == r
end

// declare variable to hold array
// loop over each
//


I think it's in everyone's best interest if we all have time to cool down.
