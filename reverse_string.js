function reverse_string(string) {
  var reversed = ""
  for(i = 0; i < string.length; i++) {
    reversed = string[i] + reversed
  }
  return reversed;
}