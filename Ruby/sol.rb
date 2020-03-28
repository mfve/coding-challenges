# if we pick i = 0 

def masseuse(arr)
    return arr.max if arr.length < 3

    [total_time(arr[0], arr.drop(2)), total_time(arr[1], arr.drop(3))].max
end

def total_time(time, arr)
    return time if arr.empty?
    return time + arr[0] if arr.length == 1

    times = [total_time(time + arr[0], arr.drop(2)), total_time(time + arr[1], arr.drop(3))]
    
    return times.max
end

p masseuse([1,10,3,4,5])