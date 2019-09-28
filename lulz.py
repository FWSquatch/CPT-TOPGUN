#!/usr/bin/env python3
import random

seed = ['l','o','L','O','0','1','\n']

lulz = ""

for i in range(10000):
  lulz += random.choice(seed)

print(lulz)
