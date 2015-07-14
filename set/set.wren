class Set {
	new {
		_data = []
	}
	
	clear() {
		_data = []
	}
	
	contains(item) { _data.contains(item) }
	count { _data.count }
	
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
	
	iterate(iterator) { _data.iterate(iterator) }
	iteratorValue(iterator) { _data.iteratorValue(iterator) }
}
