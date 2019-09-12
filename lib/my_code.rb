def map(array)
  new = []
  i = 0 
  while array.length > i do
    new.push(yield(array[i]))
    i += 1 
  end
  new 
end 


def reduce(array, sv = nil)
  if sv 
    n = sv
    i = 0 
  else 
    n = array[0]
    i =1  
  end
  while array.length > i do
    yield(n, array)
  end
end 