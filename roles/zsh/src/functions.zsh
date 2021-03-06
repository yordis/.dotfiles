function get-app-running-on-port() {
  port=$1
  rstring=$2

  lsof -wni tcp:"${port}" | grep "${rstring}"
}

function docker-remove-none-images() {
  docker images | grep none | awk '{print $3}' | xargs docker rmi -f
}

function git-prune() {
  git gc --prune=now
  git remote prune origin
}

function unfuck-master-branch() {
  git branch $1
  git reset HEAD~ --hard
  git checkout $1
}

function gpublish() {
  git push -u origin $(git rev-parse --abbrev-ref HEAD)
}

function dotfiles-docker() {
  cd "$DOTFILES_ROOT/roles/docker/src"
}

function dotfiles-dc() {
  docker compose \
    --project-name dotfiles \
    --project-directory "$DOTFILES_ROOT/roles/docker/src" \
    --file "$DOTFILES_ROOT/roles/docker/src/docker-compose.yml" \
    "$@"
}

function docker-bash-it() {
  docker exec -it $1 bash
}

function gaacnm() {
  git add .
  git commit --allow-empty-message -m ''
}

function touch-r() {
  mkdir -p "$(dirname "$1")" && touch "$1"
}

function kexec {
  NS=${1:-default}
  kubectl exec -it -n $NS $(k get pods -n $NS | grep -v NAME | grep ${2} | awk '{print $1}') -- ${3:-sh} "${@:4}"
}

function elixir-test-watch {
  local flags="$*"
  fswatch lib test | mix test --stale --listen-on-stdin $flags
}

function git-delete-merged-branches {
  local targetbrach=${1:-"master"}
  git branch --merged | egrep -v "(^\*|$targetbrach)" | xargs git branch -d
}
