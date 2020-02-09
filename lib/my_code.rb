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
  output = yield(start)
  while i < arr.length do
    output += arr[i] if arr[i].is_a?(Integer)
    i += 1
  end
  output
end