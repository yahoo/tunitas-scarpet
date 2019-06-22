# source ${0%/*}/rigging.sh || exit 70
# ... just set the path (that is all, for now)
#
__topdir=${0%/*}/../..
export PATH="${__topdir?}/bin:${__topdir?}/sbin:$PATH"
