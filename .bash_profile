# major variables...
#export JAVA_HOME=$(/usr/libexec/java_home)
#export GOROOT=/usr/local/opt/go/libexec
#export GOPATH=$HOME/go
#export PATH=$GOPATH/bin:$HOME/bin:$PATH
#export SCALA_HOME=/usr/local/share/scala
#export CABAL_HOME=~/.cabal
#export PATH=$SCALA_HOME/bin:$CABAL_HOME/bin:$PATH

# especially $PATH...
export PATH="/usr/local/sbin:$PATH"

# most anything else should be in .bashrc so hie thee hence
[[ -r ~/.bashrc ]] && . ~/.bashrc


export PATH="$HOME/.cargo/bin:$PATH"
