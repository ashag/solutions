def reverse(string)
  i = 0
  reversed = ""
  while i < string.length
    reversed = string[i] + reversed
    i+=1
  end
  reversed
end