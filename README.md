# wren-helpers
Classes available in other languages written in wren

* Queue
* Set
* Stack

Algorithms available in class *Algorithms*

* all_of(list, predicate): return `true` if `predicate` returns `true` for all elements of `list`.
* any_of(list, predicate): return `true` if `predicate` returns `true` for (at least) one element of `list`.
* none_of(list, predicate): return `true` if `predicate` returns `true` for no elements of `list`.
* count(list, value): return the number of occurences of `value` are in `list`.
* count_if(list, predicate): return the number of times `predicate` returns `true` for each elements of `list`.
* equal(list1, list2): return `true` if `list1` and `list2` have the same elements in the same order.
* equal(list1, list2, predicate): return `true` if `predicate.call(list1[i], list2[i])` returns `true` for all `i`.
* generate(value, size): return a list of `size` elements all being `value`.
* remove(list, value): remove all occurences of `value` in `list`.
* remove_if(list, predicate): remove all values of `list` where `predicate` returns `true`.
* reverse(list): reverse the order of the elements of `list`.
* unique(list): remove consecutive duplicates in `list`.
* min(list): return the minimum element of `list`.
* max(list): return the maximum element of `list`.
