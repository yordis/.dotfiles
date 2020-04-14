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
  docker-compose --project-name dotfiles --project-directory "$DOTFILES_ROOT/roles/docker/src" "$@"
}


function gaacnm() {
  git add .
  git commit --allow-empty-message -m ''
}
