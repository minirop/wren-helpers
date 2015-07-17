# wren-helpers
Classes available in other languages written in wren

* Queue
* Set
* Stack

Algorithms available in class *Algorithms*

* none_of(list, predicate): return `true` if `predicate` returns `true` for no elements of `list`.
* equal(list1, list2): return `true` if `list1` and `list2` have the same elements in the same order.
* equal(list1, list2, predicate): return `true` if `predicate.call(list1[i], list2[i])` returns `true` for all `i`.
* generate(value, size): return a list of `size` elements all being `value`.
* remove(list, value): remove all occurences of `value` in `list`.
* remove_if(list, predicate): remove all values of `list` where `predicate` returns `true`.
* reverse(list): reverse the order of the elements of `list`.
* unique(list): remove consecutive duplicates in `list`.
* min(list): return the minimum element of `list`.
* max(list): return the maximum element of `list`.
