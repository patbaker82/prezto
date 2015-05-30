#
# Loads the GoLang paths
#
# Authors:
#   Patrick Baker <patricksbaker@gmail.com>
#

# Get GOPATH location
zstyle -s ':prezto:module:golang:gopath' location '_gopath'
_gopath_expanded=${(j::)~_gopath}
export GOPATH="${_gopath_expanded}"

# Create GOPATH if ! exists
if [[ ! -d "${_gopath_expanded}" ]]; then
  mkdir ${_gopath_expanded}
fi

# Add GOPATH bin to path
export PATH=$PATH:$GOPATH/bin
