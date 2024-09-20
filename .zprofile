eval "$(/opt/homebrew/bin/brew shellenv)"

export ANDROID_HOME="/Users/soupertonic/Library/Android/sdk"
export LIBRARY_PATH="$(brew --prefix llvm@15)/lib:$(brew --prefix zstd)/lib"

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$(brew --prefix llvm@15)/bin:$PATH"
export PATH="$PATH:/opt/homebrew/lib/ruby/gems/3.3.0/bin/"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" 
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
