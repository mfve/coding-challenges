#  Max Submatrix: Given an NxN matrix of positive and negative integers, write code to find the
# submatrix with the largest possible sum. 

def max_submatrix(matrix)
    n = matrix.length
    max_value = matrix[0][0]
    # i and j are the initial index, k and l are the lengths of the matrix
    for i in 0..(n - 1)
        for j in 0..(n - 1)
            for k in 0..(n - 1 - i)
                for l in 0..(n - 1 - j)
                    sum = sum_submatrix(matrix[i..(i+k)][j..(j+l)])
                    max_value = sum if sum > max_value
                end
            end
        end
    end

    max_value
end

def sum_submatrix(matrix)
    sum = 0
    matrix.each do |arr|
        arr.each { |a| sum += a }
    end

    sum
end

# brute force approach O(n^6)
# can do some pre calculation to reduce to probably O(n^4)
p max_submatrix([[2,4], [5,-1]])