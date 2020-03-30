# Given a string, find the length of the longest substring without repeating characters.

# Sliding window approach, find biggest using the first character, then try to expand at each point
# Not very efficient yet

class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:        
        if (len(s) < 2):
            return len(s)
        
        longest_substring = s[0]
        for i in range(len(s) - 1): 
            # No way we can have a maximum that starts at the last letter.
            if (len(longest_substring)) >= (len(s) - i):
                # Found the maximum
                break
            longest_substring = Solution.checkForSubstrings(self, s, longest_substring, i)
        
        return len(longest_substring)

    def checkForSubstrings(self, s: str, longest_substring: str, i: int) -> int:
        for j in range(len(longest_substring), len(s) - i + 1):
            char_set = set()
            substr = s[i:(i+j)]
            # check for uniqueness
            for c in substr:
                if c in char_set:
                    # Non unique now
                    return longest_substring
                char_set.add(c)
            longest_substring = substr
        return longest_substring

print(Solution.lengthOfLongestSubstring(None, 'abcde'))
