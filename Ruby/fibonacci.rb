def fibonacci(n, values = [1,1])
    return 1 if n < 3

    if values.length < n
        fibonacci(n - 1, values)
    end

    values[n-1] = values[n-2] + values[n-3]
end