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
  i = 0
  output = start
  while i < arr.length do
    output += arr[i]
    i += 1
  end
  output
end