(1..100).each {|n| puts n if n.odd?}

def return_odds(x)
  n = 1
  array = [n]
  while n <= x
    n += 2
    if x.even? && n > x
      return array
    end
    array << n
  end
  array
end