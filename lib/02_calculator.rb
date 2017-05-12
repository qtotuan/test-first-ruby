def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  sum = 0
  i = 0
  while i < arr.length do
    sum += arr[i]
    i += 1
  end
  sum
end

def multiply(arr)
  product = arr[0]
  i = 1
  while i < arr.length do
    product *= arr[i]
    i += 1
  end
  product
end

def power(a, b)
  a ** b
end

def factorial(num)
  return 1 if num == 0 

  num * (factorial(num-1))

end
