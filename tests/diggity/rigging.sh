# source ${0%/*}/rigging.sh || exit 70
# ... just set the path (that is all, for now)
#
f=${0##*/}
b=${f%.test}
name=$b
path=/${name?}
d=$(basename ${0%/*})
exe=$d # NOT exe=${PWD##*/} because this executes from ${srcdir} not from ${srcdir}/tests/$d
__topdir=${0%/*}/../..
export PATH="${__topdir?}/check/bin:${__topdir?}/bin:${__topdir?}/sbin:$PATH"
