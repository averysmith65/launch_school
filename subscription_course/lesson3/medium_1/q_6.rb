answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# the answer is 34 because the method definition was not called on
# so p answer - 8 is actually 42 - 8