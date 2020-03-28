def subsets(nums)
    subsets = [[]]
    nums.each { |n| subsets += subsets.map { |s| s + [n] } }
    subsets
end

p subsets([1,2,3])