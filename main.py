import sys
import random

p_number = 3
permutations = {} # minimum ... corresponds to the index
cubes = {} # counter for all the values ...

n = 0
while True:
    n = n + 1
    cube = n**3

    p_id = "".join(sorted(str(cube)))

    # cache the number of permutations that have occurred
    if not permutations.get(p_id):
        permutations[p_id] = 0
    permutations[p_id] += 1

    # store the smallest cube
    if not cubes.get(p_id) or cubes.get(p_id) > cube:
        cubes[p_id] = cube

    if permutations[p_id] == p_number:
        print cubes[p_id]
        break





