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
    if arr[i].is_a?(Integer)
      output += arr[i] 
    elsif yield(arr[i])
      output = yield(arr[i])
    elsif yield(arr)
      output = yield(arr)
    elsif !arr[i]
      output = false
    end
    i += 1
  end
  output
end