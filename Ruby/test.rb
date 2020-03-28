# leetcode is an anagram problem
def find_anagrams(s, p)
    indexes = []
    for i in 0..(s.length - p.length)
        indexes << i if is_an_anagram?(s[i,p.length],p)
    end
    indexes
end

def is_an_anagram?(left, right)
    char_count = Hash.new(0)
    for i in 0..(left.length - 1)
        char_count[left[i]] += 1
        char_count[right[i]] += 1
    end
    
    char_count.values.each { |value| return false unless value == 2 }
    true
end

pp find_anagrams('abab','ab')