for i in db-cli-fresh db-cli
do
  unalias $i 2>/dev/null
  unset -f $i 2>/dev/null
done

function db-cli-fresh {
  docker volume rm db-cli && \
  docker run -it -w /root -v db-cli:/root: --rm db-cli bash
}

function db-cli {
  docker run -it -w /root -v db-cli:/root: --rm db-cli bash
}
