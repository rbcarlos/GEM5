#!/bin/bash

# baseline three level
build/X86/gem5.opt configs/learning_gem5/part1/three_level.py --l2_size='1MB' --l1d_size='128kB'

cp -r m5out/ roba_out/three-level-baseline

echo "Three level Baseline done!"

# 400MHz
build/X86/gem5.opt configs/learning_gem5/part1/three_level.py --l2_size='1MB' --l1d_size='128kB' --repl_policy="TrueRandomRP"

cp -r m5out/ roba_out/three-level-random

echo "Three level Random done"