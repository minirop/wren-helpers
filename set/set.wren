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
		for (index  in 0...count) {
			if (item < _data[index]) {
				_data.insert(index, item)
				return
			} else {
				if (item == _data[index]) {
					return
				}
			}
		}
		_data.add(item)
	}
	
	iterate(iterator) { _data.iterate(iterator) }
	iteratorValue(iterator) { _data.iteratorValue(iterator) }
	
	remove(item) {
		for (index  in 0...count) {
			if (item == _data[index]) {
				_data.removeAt(index)
				return true
			}
		}
		return false
	}
}
