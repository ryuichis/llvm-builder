git clone https://github.com/llvm/llvm-project.git
cd llvm-project
git checkout llvmorg-13.0.1
cd ..
mkdir llvm-build
cd llvm-build/
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../llvm-release -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm-project/llvm
make -j4
make install
cd ..
tar cJf llvm-release.tar.xz llvm-release/

# llvm-13.0.1-arm64-apple-darwin.tar.xz
