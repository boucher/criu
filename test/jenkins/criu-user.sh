# Make 3 iteration of dump/restore for each test
set -e
source `dirname $0`/criu-lib.sh
prep
mount_tmpfs_to_dump
./test/zdtm.py run --all --report report --parallel 4 --user --norst -x 'maps04' || fail
