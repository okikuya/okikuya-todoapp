source ~/.bash_profile
source ~/.bash_profile
export PYTHON=$(which python3)
alias python=python3
source ~/.bash_profile
source ~/.bash_profile

export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib -L/opt/homebrew/opt/libyaml/lib -L/opt/homebrew/opt/readline/lib"

export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include -I/opt/homebrew/opt/libyaml/include -I/opt/homebrew/opt/readline/include"

export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig:/opt/homebrew/opt/libyaml/lib/pkgconfig:/opt/homebrew/opt/readline/lib/pkgconfig"



