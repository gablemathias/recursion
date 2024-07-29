def fibonacci(n)
  return n if n <= 1

  fibonacci(n - 1) + fibonacci(n - 2)
end

def fibs(n)
  i = 0
  arr = []
  while i <= n
    if i == 1 || i == 0
      arr.push(i)
    else
      arr.push(arr[i-1] + arr[i-2])
    end
    i += 1
  end

  arr
end

def fibs_rec(n)
  return [0, 1] if n < 2

  preceding = fibs_rec(n - 1)
  preceding.push(preceding[-1] + preceding[-2])
end