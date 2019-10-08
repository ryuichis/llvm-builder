wget http://releases.llvm.org/8.0.1/llvm-8.0.1.src.tar.xz
tar xf llvm-8.0.1.src.tar.xz
mkdir llvm-8.0.1.build
cd llvm-8.0.1.build/
cmake -DLLVM_BUILD_LLVM_DYLIB=ON -DCMAKE_INSTALL_PREFIX=../llvm-8.0.1-linux-x86_64 -DCMAKE_BUILD_TYPE=Release ../llvm-8.0.1.src
make -j2
make install
cd ..
tar czf llvm-8.0.1-linux-x86_64.tar.gz llvm-8.0.1-linux-x86_64
