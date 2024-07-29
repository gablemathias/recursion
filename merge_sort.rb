# [3, 2, 1, 13, 8, 5, 0, 1]

def merge_sort(arr)
  return arr if arr.length <= 1
  
  half = arr.size.ceildiv(2)
  left_half = arr[...half]
  right_half = arr[half..]

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  result = []
  i = j = 0

  while i < left.size && j < right.size
    if left[i] < right[j]
      result.push(left[i]) 
      i += 1
    else
      result.push(right[j])
      j += 1
    end
  end

  result += left[i..]
  result += right[j..]

  result
end