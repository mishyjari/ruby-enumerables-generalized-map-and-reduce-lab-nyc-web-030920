# Your Code Here
def map(arr)
  output = []
  i = 0
  while i < arr.length do
    yield(output.push(arr[i]))
    i += 1
  end
  output
end