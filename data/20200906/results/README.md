# Evaluation
This page presents some statistics of running SUPERCOP configured with certified compilers. It aims to measure the cost of using certified compilers in SUPERCOP. The compilers and respective flags used for this evaluation are present in file `patch/20200906/run2/okcompilers`. 

Briefly, SUPERCOP is organized as follows: at the top level we can find operations, which constitute abstract interfaces for a common cryptographic component. Examples or operations are: `crypto_hash` or `crypto_aead`. Each operation contains several primitives which are essentially an instatiation of an operation. Examples of primitives are: `crypto_hash/sha256` or `crypto_aead/aes256gcmv1/`. For each primitive there could be several implementations. In each primitive it is common to find a reference implementation, usually written in C, and several others optimized for specific architecures/micro architectures/CPU extensions. Some of these implementations are written in assembly or use inline assembly. 

## Types of implementations
This section presents an overview of the different types of implementations that are present in SUPERCOP. Lets consider the following types for implementations:

* asm: implementation contains at least one file written in assembly with extension .s or .S
* inline-asm: implementation contains at least one file written in C or CPP that matches the following tag: `__asm__`. Considered file extensions: .h, .c, .hpp or .cpp
* immintrin: implementation contains at least one file written in C or CPP that matches the following pattern: `_mm[0-9]*_`
* c: implementation doesn't contain any .cpp .hpp .s .S files in it
* cpp: implementations doesn't contain any .c .s .S files 

|operation|total|asm|
|--------------------|----|----|
|crypto_verify|15|0|
|crypto_decode|48|0|
|crypto_encode|48|0|
|crypto_sort|18|1|
|crypto_core|131|16|
|crypto_hashblocks|31|10|
|crypto_hash|941|302|
|crypto_stream|290|141|
|crypto_onetimeauth|14|12|
|crypto_auth|19|0|
|crypto_secretbox|2|0|
|crypto_aead|1024|101|
|crypto_rng|3|0|
|crypto_scalarmult|17|10|
|crypto_box|2|0|
|crypto_dh|188|132|
|crypto_sign|428|10|
|crypto_kem|369|39|
|crypto_encrypt|92|0|











