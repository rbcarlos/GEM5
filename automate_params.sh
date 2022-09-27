#!/bin/bash

# baseline
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=2 --clock_speed="1GHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/baseline

# 400MHz
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=2 --clock_speed="400MHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/400MHz

# 4GHz
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=2 --clock_speed="4GHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/4GHz

# 16 assoc
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=16 --clock_speed="1GHz" --mem_type='DDR3_1600_8x8'

cp -r m5out/ roba_out/16assoc

# DDR3_2133_8x8
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=16 --clock_speed="1GHz" --mem_type='DDR3_2133_8x8'

cp -r m5out/ roba_out/ddr3_2133

# LPDDR2_S4_1066_1x32
build/X86/gem5.opt configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB' --l1d_assoc=16 --clock_speed="1GHz" --mem_type='LPDDR2_S4_1066_1x32'

cp -r m5out/ roba_out/lpddr2