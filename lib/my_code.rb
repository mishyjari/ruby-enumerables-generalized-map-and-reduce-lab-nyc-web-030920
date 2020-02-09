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
  i = 0
  if start 
    output = start
  else
    output = nil
  end
  while i < arr.length do
    output = yield(output,arr[i])
    i += 1
  end
  output
end