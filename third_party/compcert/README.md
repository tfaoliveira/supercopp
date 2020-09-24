## CompCert version 3.7

```
cd supercopp/third_party/compcert/compcert3.7/
nix-shell --command "./configure x86_64-linux -libdir /usr/local/lib/compcert/ccomp-3.7/ && make && sudo make install" ../compcert_v3.7.nix
sudo cp /usr/local/bin/ccomp /usr/local/bin/ccomp-3.7
```

## CompCert version 2.2 (x86) standard and simd
```
cd supercopp/third_party/compcert/compcert_v2.2
vagrant up
```

If `vagrant up` runs successfully then you can install CompCert 2.2:
```
cd supercopp/third_party/compcert/compcert_v2.2/compcert-2.2
sudo make install
sudo cp /usr/local/bin/ccomp /usr/local/bin/ccomp-2.2
```

You can also install CompCert 2.2 SIMD:
```
cd supercopp/third_party/compcert/compcert_v2.2/ccomp-simd/build/
sudo make install
sudo cp /usr/local/bin/ccomp /usr/local/bin/ccomp-2.2-simd
sudo mkdir -p /usr/local/include/compcert/ccomp-2.2-simd/
sudo cp sudo cp test/simd/ccomp-include/*.h /usr/local/include/compcert/ccomp-2.2-simd/
```

