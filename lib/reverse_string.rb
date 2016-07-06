def reverse_string(string)
  for letter in (0..(string.length-1)/2) do
    temp = string[-1 - letter]
    string[-1 - letter] = string[letter]
    string[letter] = temp
  end
  return string
end

puts reverse_string("Time for Waffles")
