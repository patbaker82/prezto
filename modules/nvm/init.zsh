#
# Enable nvm
#
# Authors:
#   Patrick Baker <patricksbaker@gmail.com>
#

if  [[ "$OSTYPE" == darwin* ]]; then
    local nvm="$(brew --prefix nvm)/nvm.sh"
    if [[ -e "${nvm}" ]]; then
        export NVM_DIR=~/.nvm
        if [[ ! -e ${NVM_DIR} ]]; then
            mkdir ${NVM_DIR}
        fi
        source ${nvm}
    fi
fi
