This is a Ruby implementation of a linked list using a `LinkedList` and a `Node` class.

It has the following methods:

  * `#append` adds a new node to the end of the list
  * `#prepend` adds a new node to the start of the list
  * `#size` returns the total number of nodes in the list
  * `#head` returns the first node in the list
  * `#tail` returns the last node in the list
  * `#at(index)` returns the node at the given index
  * `#pop` removes the last element from the list
  * `#contains?` returns true if the passed in value is in the list and otherwise returns false.
  * `#find(data)` returns the index of the node containing data, or nil if not found.
  * `#to_s` represents the LinkedList objects as strings, so you can print them out and preview them in the console.

Once written, I started using my `#at(index)` method everywhere, until I realized that meant my program would be looping through the list rather more often than was necessary... So I then rewrote my `#contains?` and `#find(data)` methods to make them a bit faster.

From The Odin Project's [curriculum](https://www.theodinproject.com/lessons/linked-lists)
