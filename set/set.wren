class Set {
	new {
		_data = []
	}
	
	clear() {
		_data = []
	}
	
	contains(item) {
		return _data.contains(item)
	}
	
	count {
		return _data.count
	}
	
	insert(item) {
		var index = 0
		while (index < count) {
			if (item < _data[index]) {
				_data.insert(index, item)
				return
			} else {
				if (item == _data[index]) {
					return
				}
			}
			index = index + 1
		}
		_data.add(item)
	}
}
