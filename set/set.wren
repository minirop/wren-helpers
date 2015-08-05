class Set {
	construct new() {
		_data = []
	}

	construct new(items) {
		_data = []
		for (item in items) {
			insert(item)
		}
	}
	
	clear() {
		_data = []
	}
	
	contains(item) { _data.contains(item) }
	count { _data.count }
	isEmpty { count == 0 }
	! { isEmpty }
	toString { _data.toString }
	
	insert(item) {
		for (index in 0...count) {
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
		for (index in 0...count) {
			if (item == _data[index]) {
				_data.removeAt(index)
				return true
			}
		}
		return false
	}

	|(other) {
		var newSet = Set.new()
		for (item in _data) {
			newSet.insert(item)
		}
		for (item in other) {
			newSet.insert(item)
		}
		return newSet
	}

	&(other) {
		var newSet = Set.new()
		for (item in other) {
			if (_data.contains(item)) {
				newSet.insert(item)
			}
		}
		return newSet
	}

	+(other) { this | other }

	-(other) {
		var newSet = Set.new(_data)
		for (item in other) {
			if (_data.contains(item)) {
				newSet.remove(item)
			}
		}
		return newSet
	}

	^(other) {
		return (this | other) - (this & other)
	}

	*(other) {
		var cartesianProduct = []
		for (first in _data) {
			for (second in other) {
				cartesianProduct.add([first, second])
			}
		}
		return cartesianProduct
	}

	==(other) {
		if (count != other.count) return false

		for (i in 0...count) {
			if (!other.contains(_data[i])) return false
		}

		return true
	}
}
