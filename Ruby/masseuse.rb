# The Masseuse: A popular masseuse receives a sequence of back-to-back appointment requests
# and is debating which ones to accept. She needs a lS-minute break between appointments and
# therefore she cannot accept any adjacent requests. Given a sequence of back-to-back appointment requests (all multiples of 1 S minutes, none overlap, and none can be moved), find the optimal
# (highest total booked minutes) set the masseuse can honor. Return the number of minutes.
# EXAMPLE
# Input {30, 15, 60, 75, 45, 15, 15, 45}
# Output180 minutes ({30, 60,45, 45}). 

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
