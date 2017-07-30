test1 = [42, 89, 23, 1]
test2 = [5,4,3]
def search_array(arr,y)
  if arr.include?(y) == true
	i = 0 
	until arr.at(i) == y
	i +=1
	end
	puts i
	else
	  puts nil
	end
end

search_array(test1, 89)
search_array(test1,9)
