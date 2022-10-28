# README

Here you can find an implementation for a stack data structure using linked list 

There are two main classes Stack and Extras, and one helper class called Node

Supported functionality: 

Stack:
+ push
+ pop
+ max

Extras:
+ push
+ pop
+ max
+ mean

Challenges :-
+   To get mean or max I had to loop over the whole stack, which has a complexity of O(n) ..
    then I thought about sort but that wouldn't be a solution because it has more time complexity Than loop over the stack, for example let's say we use something like a quick sort or merge sort Algorithms that's nice but the time complexity will be O(n log n) 
    of course it is bigger than O(n), So it's not the best solution.
    since in our case The number of calls to "max" will be by magnitude than "push" or "pop"
    so we might call max multiple times without call push or pop methods.. hence stack won't change if Push or pop not called, and the max won't change too, from here I bring 'has_change' variable to check if the stack has changed or not, if not then return the last max without doing any extra work.

