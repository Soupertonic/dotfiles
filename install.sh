[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

set -o xtrace

dnf update -y
dnf install -y fzf cmake git nodejs22 java-21-openjdk

git clone https://github.com/neovim/neovim
cd neovim

mkdir -p /opt/neovim
chown soup -R /opt/neovim

make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/opt/neovim/
make install

cd ..
rm -rf neovim

mkdir -p /opt/llvm/
chown soup -R /opt/llvm

wget https://github.com/llvm/llvm-project/releases/download/llvmorg-19.1.1/llvm-project-19.1.1.src.tar.xz
tar -xJvf llvm-project-19.1.1.src.tar.xz
rm -rf llvm-project-19.1.1.src.tar.xz
cd llvm-project-19.1.1.src

cmake -G "Unix Makefiles" -S llvm -B build -DCMAKE_INSTALL_PREFIX="/opt/llvm" -DCMAKE_BUILD_TYPE="Release" -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lld" -DLLVM_ENABLE_RUNTIMES="compiler-rt;libcxx;libcxxabi;libunwind" -DLLVM_TARGETS_TO_BUILD="AArch64" -DLLVM_STATIC_LINK_CXX_STDLIB=On
cd build
make -j$(nproc)
make install

cd ..
rm -rf llvm-project-19.1.1.src

git clone https://github.com/soupertonic/dotfiles

mv dotfiles/* .
mv dotfiles/.* .

rm -rf dotfiles
rm -rf .git

gsettings set org.gnome.desktop.interface font-name "Inter Display Medium, 9.5"
