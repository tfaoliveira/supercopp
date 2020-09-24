# supercopp
This repository aims to collect data about how SUPERCOP/compilers -- certified or not -- perform.

## Run2

Before running SUPERCOP you can read section "Reducing randomness in benchmarks" from SUPERCOP's website. There are some scripts in `supercopp/scripts` that can help you with this task: check `scripts/cpu-*` files (they were tested with Ubuntu 20.04/i5-7260u; they may need some adjustments for different environments). To disable HT and turn off TurboBoost/set CPU speed you can run:
```
./scripts/cpu-set-$driver
```
Where `$driver` is either `acpi` or `pstate`. There is also a script to turn back on disabled logical CPU's and so:
```
./scripts/cpu-restore
```

To run SUPERCOP with the compilers file `patch/$version/run2/okcompilers/c` (after installing ComCert 2.2, standard and SIMD, and CompCert 3.7 -- for instructions check `third_party/compcert/README.md`) run:
```
./scripts/supercop-get
./scripts/supercop-patch run2
./scripts/supercop-run run2
```

There are also some dependencies that you may need to install, namely `gcc-multilib`, `g++-multilib` and `xsltproc`. This README.md will be updated with more information as the project evolves.
