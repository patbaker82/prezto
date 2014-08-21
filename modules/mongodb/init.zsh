#
# Enable MongoDB
#
# Authors:
#   Patrick Baker <patricksbaker@gmail.com>
#

local mongod_path='/usr/local/bin/mongod'
local mongod_pid='/usr/local/var/mongodb/mongod.lock'
local mongo_log='/usr/local/var/log/mongodb/mongo.log'

if [[ "$OSTYPE" == darwin* ]]; then
    alias mongod-start="${mongod_path} --config /usr/local/etc/mongod.conf --fork"
    alias mongod-stop="cat ${mongod_pid}|xargs kill -15"
    alias mongo-log="tail -f ${mongo_log}"
fi
