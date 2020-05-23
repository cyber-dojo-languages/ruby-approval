set -e

trap tidy_up EXIT
function tidy_up()
{
  [ ! -f .approvals ] || rm .approvals
  [ ! -d coverage ] || rm -rf coverage
}

# remove existing coverage report if there is one
[ -e report/coverage.txt ] && rm report/coverage.txt

# turn off colour for new coverage report
export NO_COLOR=1

# Test output can be formatted as progress or documentation
rspec . \
  --format progress \
  --no-color
