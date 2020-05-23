set -e

trap tidy_up EXIT
function tidy_up()
{
  # cyber-dojo returns text files under /sandbox that are
  # created/deleted/changed. In here you can remove any
  # such files you don't want returned to the browser.
  [ ! -f .approvals ] || rm .approvals
  [ ! -d coverage/ ] || rm -rf coverage/
}

# remove existing coverage report if there is one
[ -e report/coverage.txt ] && rm report/coverage.txt

# turn off colour for new coverage report
export NO_COLOR=1

# Test output can be formatted as progress or documentation
rspec . \
  --format progress \
  --no-color
