import "queue" for Queue

var q = new Queue
q.push(42)
q.push(33)
q.push(12)
IO.print(q.count, " elements: ", q.front) // prints "3 elements: 42"
q.push(6)
IO.print(q.count, " elements: ", q.front) // prints "4 elements: 42"
var old_top = q.pop()
IO.print(q.count, " elements: ", q.front, ", ", old_top) // prints "3 elements: 33, 42"
