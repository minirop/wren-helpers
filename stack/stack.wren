class Stack {
	new {
		_data = []
	}
	
	clear() {
		_data = []
	}
	
	top {
		if (count > 0) return _data[-1]
	}
	count { _data.count }
	push(item) { _data.add(item) }
	pop() { _data.removeAt(-1) }
}
