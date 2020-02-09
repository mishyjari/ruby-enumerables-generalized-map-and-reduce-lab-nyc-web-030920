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

def reduce(arr,start=nil)
  if start 
    output = start
    i = 0
  else 
    output = arr[0]
    i = 1
  end
  while i < arr.length do
    output = yield(output,arr[i])
    i += 1
  end
  output
end