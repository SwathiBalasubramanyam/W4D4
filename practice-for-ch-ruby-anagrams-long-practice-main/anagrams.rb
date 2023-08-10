# O(n!)
# def anagram?(word_1, word_2) 
#     word_split = word_1.split("")
#     # o(n) + o(n!) + o(n)
#     word_split.permutation.any? {|list_chars|
#         list_chars.join("") == word_2
#     }
# end

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true

# o(n)
# def second_anagram?(word_1, word_2)
    
#     word_1.each_char do |char|
#         idx = word_2.index(char)
#         word_2[idx] = "" if idx
#     end
#     word_2 == ""
# end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

# o(n^2)
# def third_anagram?(word_1, word_2)
#     word_1.chars.sort == word_2.chars.sort
# end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

# o(n)
# def fourth_anagram?(word_1, word_2)
#     word_1_hash = Hash.new(0) 
#     word_2_hash = Hash.new(0)
    
#     word_1.each_char {|char| word_1_hash[char] += 1}
#     word_2.each_char {|char| word_2_hash[char] += 1}

#     word_1_hash == word_2_hash

# end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

# TC o(n)
#  better than two hash
def bonus_anagram?(word_1, word_2)
    word_1_hash = Hash.new(0) 
    
    word_1.each_char {|char| word_1_hash[char] += 1}
    word_2.each_char {|char| word_1_hash[char] -= 1}

    word_1_hash.all?{|k,v| v == 0}

end

p bonus_anagram?("gizmo", "sally")    #=> false
p bonus_anagram?("elvis", "lives")    #=> true
