class Queue {
	new {
		_data = []
	}
	
	clear() {
		_data = []
	}
	
	front {
		if (count > 0) return _data[0]
	}
	count { _data.count }
	push(item) { _data.add(item) }
	pop() { _data.removeAt(0) }
}
