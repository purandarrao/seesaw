#export PATH=/usr/local/go/bin:$PATH
# GOPATH: path to any folder where you want GO modules/packages to be installed.
export GOPATH=$HOME/work
#GOROOT: path directory go src directory downloaded
export GOROOT=/usr/local/go/
export PATH=$GOROOT/bin:$PATH:$GOPATH/bin
go version
