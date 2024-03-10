import pikepdf
import itertools
import sys

words = ['ARUN', 'ARUNACHAL', '28', '12', '2000', '603306']

for r in range(1, len(words)):
    for comb in itertools.combinations(words, r):
        for perm in itertools.permutations(comb):
            p = ''.join(perm)
            try:
                pikepdf.open(sys.argv[1], password=p)
                print(f'PASSWORD: {p}')
                quit()
            except:
                continue
