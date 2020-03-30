# Given a 32-bit signed integer, reverse digits of an integer.
# Overflow returns 0

class Solution:
    def reverse(self, x: int) -> int:
        limit = 2 ** 31
        upper_limit = limit - 1
        lower_limit = limit * -1

        sign = '' if (x >= 0) else '-'
        digits = str(x) if sign == '' else str(x)[1:]
        ret = int(sign + digits[::-1])
        if (ret > upper_limit) or (ret < lower_limit):
            return 0     
        return ret

print(Solution.reverse(None, -123))