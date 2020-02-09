# Your Code Here
def map(arr)
  output = []
  i = 0
  while i < arr.length do
    output << yield(arr[i])
    i += 1
  end
  output
end

def reduce(arr,start=0)
  output = start
  i = 0
  while i < arr.length do
    if 
    yield(arr[i])
    i += 1
  end
  output
end