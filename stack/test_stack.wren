import "stack" for Stack

var s = new Stack
s.push(42)
s.push(33)
s.push(12)
IO.print(s.count, " elements: ", s.top) // prints "3 elements: 12"
s.push(6)
IO.print(s.count, " elements: ", s.top) // prints "4 elements : 6"
var six = s.pop()
IO.print(s.count, " elements: ", s.top, " -> ", six) // prints "3 elements: 12 -> 6"
