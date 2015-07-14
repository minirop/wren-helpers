import "set" for Set

var s = new Set
s.insert(1)
s.insert(3)
s.insert(6)
IO.print(s.count, " elements") // prints "3 elements"
s.insert(3)
IO.print(s.count, " elements") // still prints "3 elements"

IO.print(s.contains(3), " ", s.contains(4)) // prints "true false"

for (i in s) {
	IO.print(i) // prints 1, 3, 6
}

class User {
	new (id) {
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

var x = new Set
x.insert(new User(1))
x.insert(new User(2))
x.insert(new User(1))
IO.print(x.count, " elements") // prints "2 elements"