#!/bin/bash

# baseline
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=2 --clock_speed="1GHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/baseline

echo "Baseline done!"

# 400MHz
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=2 --clock_speed="400MHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/400MHz

echo "400MHz done!"

# 4GHz
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=2 --clock_speed="4GHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/4GHz

echo "4GHz done!"

# 16 assoc
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=16 --clock_speed="1GHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/16assoc

echo "Associativity 16 done!"

# DDR3_2133_8x8
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=16 --clock_speed="1GHz" --mem_type='DDR3_2133_8x8'

cp -r m5out/ roba_out/ddr3_2133

echo "DDR3_2133_8x8 done!"

# LPDDR2_S4_1066_1x32
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=16 --clock_speed="1GHz" --mem_type='LPDDR2_S4_1066_1x32'

cp -r m5out/ roba_out/lpddr2

echo "LPDDR2_S4_1066_1x32 done!"