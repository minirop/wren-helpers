import "set" for Set

var s = Set.new()
s.insert(1)
s.insert(3)
s.insert(6)
IO.print(s.count, " elements") // prints "3 elements"
s.insert(3)
IO.print(s.count, " elements") // still prints "3 elements"
s.remove(6)
IO.print(s.count, " elements") // prints "2 elements"

IO.print(s.contains(3), " ", s.contains(4)) // prints "true false"

for (i in s) {
	IO.print(i) // prints 1 then 3
}

class User {
	construct new (id) {
		_id = id
	}
	
	<(other) {
		return other.id < _id
	}
	
	// reimplemented so User are equals if their id are equals (instead of being the same instance)
	==(other) {
		return other.id == _id
	}
	
	id {
		return _id
	}
}

var x = Set.new()
x.insert(User.new(1))
x.insert(User.new(2))
x.insert(User.new(1))
IO.print(x.count, " elements") // prints "2 elements"

var set1 = Set.new([1, 2, 3])
var set2 = Set.new([3, 4, 5])
IO.print(set1, " | ", set2, " = ", (set1 | set2))
IO.print(set1, " & ", set2, " = ", (set1 & set2))
IO.print(set1, " + ", set2, " = ", (set1 + set2))
IO.print(set1, " - ", set2, " = ", (set1 - set2))
IO.print(set1, " ^ ", set2, " = ", (set1 ^ set2))
IO.print(set1, " * ", set2, " = ", (set1 * set2))

var set3 = Set.new([5, 4, 3])
IO.print(set2, " == ", set3, " = ", (set2 == set3))
IO.print(!set1)
set1.clear()
IO.print(!set1)
