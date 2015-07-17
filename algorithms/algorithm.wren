class Algorithm {
	static none_of(list, predicate) {
		if (list.any(predicate)) {
			return false
		}
		return true
	}
	
	static equal(list1, list2) {
		if (list1.count != list2.count) {
			return false
		}
		
		for (i in 0...list1.count) {
			if (list1[i] != list2[i]) {
				return false
			}
		}
		return true
	}
	
	static equal(list1, list2, predicate) {
		if (list1.count != list2.count) {
			return false
		}
		
		for (i in 0...list1.count) {
			if (predicate.call(list1[i], list2[i]) == false) {
				return false
			}
		}
		return true
	}
	
	static generate(value, size) {
		var list = []
		for (i in 0...size) {
			list.add(value)
		}
		return list
	}
	
	static remove(list, value) {
		var newList = []
		for (i in 0...list.count) {
			if (list[i] != value) {
				newList.add(list[i])
			}
		}
		return newList
	}
	
	static remove_if(list, predicate) {
		var newList = []
		for (i in 0...list.count) {
			if (predicate.call(list[i]) == false) {
				newList.add(list[i])
			}
		}
		return newList
	}
	
	static reverse(list) {
		var newList = []
		for (i in (list.count - 1)..0) {
			newList.add(list[i])
		}
		return newList
	}
	
	static unique(list) {
		if (list.count == 0) return list
		
		var newList = [ list[0] ]
		var lastOne = list[0]
		for (i in 1...list.count) {
			if (list[i] != lastOne) {
				newList.add(list[i])
				lastOne = list[i]
			}
		}
		return newList
	}
	
	static min(list) {
		if (list.count == 0) return null
		
		var minimum = list[0]
		for (i in 1...list.count) {
			if (list[i] < minimum) {
				minimum = list[i]
			}
		}
		return minimum
	}
	
	static max(list) {
		if (list.count == 0) return null
		
		var maximum = list[0]
		for (i in 1...list.count) {
			if (list[i] > maximum) {
				maximum = list[i]
			}
		}
		return maximum
	}
}
