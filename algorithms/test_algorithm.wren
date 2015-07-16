import "algorithm" for Algorithm

var list = [52, 11, 73, 12, 535, 23, 63, 88, 57, 12]

IO.print("tested list: ", list)

IO.print("all_of < 80: ", Algorithm.all_of(list) {|item|
	return item < 80
})
IO.print("all_of > 10: ", Algorithm.all_of(list) {|item|
	return item > 10
})

IO.print("any_of < 80: ", Algorithm.any_of(list) {|item|
	return item < 80
})
IO.print("any_of < 10: ", Algorithm.any_of(list) {|item|
	return item < 10
})

IO.print("none_of < 80: ", Algorithm.none_of(list) {|item|
	return item < 80
})
IO.print("none_of < 10: ", Algorithm.none_of(list) {|item|
	return item < 10
})

IO.print("count 12: ", Algorithm.count(list, 12))

IO.print("count_if < 20: ", Algorithm.count_if(list) {|item|
	return item < 20
})

IO.print("equals to itself? ", Algorithm.equal(list, list))
IO.print("equals to an empty list? ", Algorithm.equal(list, []))

IO.print("min element: ", Algorithm.min(list))
IO.print("max element: ", Algorithm.max(list))

IO.print("a list of 3: ", Algorithm.generate(3, 5))

IO.print("after removing values '12': ", Algorithm.remove(list, 12))
IO.print("after removing values > 50: ", Algorithm.remove_if(list) {|item|
	return item > 50
})

IO.print("reverse of [1, 2, 3]: ", Algorithm.reverse([1, 2, 3]))

var uniqueness = [1,1,2,2,3,1,1,4,4,2,2,6]
IO.print("(consecutive) uniqueness of ", uniqueness, ": ", Algorithm.unique(uniqueness))
