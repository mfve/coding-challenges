require 'set'

def list_merge(original_list, add_list, delete_list)
    # create a set because it has hash lookup time and uniqueness
    result_set = Set.new(original_list)
    add_list.each { |item| result_set.add(item) }
    delete_list.each { |item| result_set.delete(item) }

    result_arr = result_set.to_a
    # .sort_by is quicksort
    # this sorts by item.length (descending order) then reverse alphabetical order (first letter, convert to integer)
    result_set.to_a.sort_by { |item| [-item.length, -item[0].to_i] }
end

puts list_merge(['one', 'two', 'three', 'six', 'seven'], ['two', 'four'], ['three'])    