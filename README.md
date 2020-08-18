Substrings
==========

A function that takes a string and an array of strings. It checks if the string includes any of the strings in the array. It returns a hash with the words from the array as keys and number of occurences as the value. If the substring is not included in the string, there will be no key in the hash for that substring.

I assume correct input, and chose not the check the input values.

### Pseudocode used as starting point
```
save string as variable
save array of words to check as variable
initialize empty hash with default value 0 to hold result as variable
convert string to lowercase
split string into array of letters
loop through word array
  loop through array of letters
    make sub-array starting at index and ending at (index + length of word array - 1)
    convert sub-array to word
    compare the sub-array-word to word from array
      if equal then use word from array as key in result-hash and increase value by one
return result hash
```

I chose not to use the `#scan` method in order to count occurences. This is because the `#scan` will not count overlayed duplicates.
For example:

```ruby
a = "xoxoxo"
a.scan("xo")
=> ["xo", "xo", "xo"]
a.scan("xox")
=> ["xox"]
```

I feel it would be more correct to include all instances, and chose to iterate through the entire string and compare 'manually'.

If you have any questions, please don't hesitate to ask. If you see anything wrong with my code, please hesitate. But, ultimately, let me know.