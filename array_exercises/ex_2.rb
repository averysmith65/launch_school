#1. arr will be product by (Array(1..3))
# so it will look like [["b",1],["b",2],["b",3],["a",1],ect]
# then arr.first.delete(arr.first.last) will delete the last value of the first index

#2 similar to 1. except the product will be with a [] instead of a ()
# this means the product will be [1,2,3] instead of seperate prodects [1] [2] [3]
# so it will look like [["b",[1,2,3]],["a",[1,2,3]]]
#then arr.first.delete(arr.first.last) will delete the last value of the first index
# so arr = [["b"], ["a", [1, 2, 3]]]