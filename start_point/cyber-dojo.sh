set -e

# ------------------------------------------------------------------------
# cyber-dojo returns text files under /sandbox that are
# created/deleted/changed. In tidy_up you can remove any
# such files you don't want returned to the browser.

trap tidy_up EXIT

function tidy_up()
{
  delete_dirs coverage/
  delete_files .approvals
}

function delete_dirs()
{
  for dirname in "$@"
  do
      rm -rf "${dirname}" 2> /dev/null || true
  done
}

function delete_files()
{
  for filename in "$@"
  do
      rm "${filename}" 2> /dev/null || true
  done
}

# ------------------------------------------------------------------------
# remove existing coverage report if there is one
[ -e report/coverage.txt ] && rm report/coverage.txt

# turn off colour for new coverage report
export NO_COLOR=1

# Test output can be formatted as progress or documentation
rspec . \
  --format progress \
  --no-color
