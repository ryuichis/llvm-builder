wget http://releases.llvm.org/9.0.0/llvm-9.0.0.src.tar.xz
tar xf llvm-9.0.0.src.tar.xz
mkdir llvm-9.0.0.build
cd llvm-9.0.0.build/
cmake -G"MinGW Makefiles" -DLLVM_BUILD_LLVM_DYLIB=ON -DCMAKE_INSTALL_PREFIX=..\llvm-9.0.0-windows-x86_64 -DCMAKE_BUILD_TYPE=Release ..\llvm-9.0.0.src
mingw32-make
mingw32-make install
cd ..
tar czf llvm-9.0.0-windows-x86_64.tar.gz llvm-9.0.0-windows-x86_64
