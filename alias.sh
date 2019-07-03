for i in db-cli-clean db-cli
do
  unalias $i 2>/dev/null
  unset -f $i 2>/dev/null
done

function db-cli-clean {
  docker volume rm db-cli && \
  docker run -it -v db-cli:/root: --rm db-cli bash
}

function db-cli {
  docker run -it -v db-cli:/root: --rm db-cli bash
}
