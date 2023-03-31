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

function git-remove-merged-branches {
  git branch --merged >/tmp/merged-branches && \ vi /tmp/merged-branches && xargs git branch -d </tmp/merged-branches
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

function file-size {
  stat -f%z $1
}

function git-add-upstream {
  git remote add upstream $1
}

function yarn-upgrade-with-pnp {
  yarn set version berry
  yarn install
}

function make-github-org-dir {
  org_name=$1
  org_dir=$HOME/Developer/github.com/$org_name
  echo "creating $org_dir directory"
  mkdir -p $org_dir
}

function github-clone-repo {
  org_and_repo=$1
  org_name=$(echo $org_and_repo | cut -d'/' -f 1)
  repo_name=$(echo $org_and_repo | cut -d'/' -f 2)
  org_dir=$HOME/Developer/github.com/$org_name
  org_repo_dir=$org_dir/$repo_name

  [ ! -d $org_dir ] && make-github-org-dir $org_name

  cd $org_dir
  [ ! -d $org_repo_dir ] && gh repo clone $org_and_repo
  cd $org_repo_dir
}

function k8s-dashboard-proxy {
  export POD_NAME=$(kubectl get pods -n default -l "app.kubernetes.io/name=kubernetes-dashboard,app.kubernetes.io/instance=kubernetes-dashboard" -o jsonpath="{.items[0].metadata.name}")
  echo https://127.0.0.1:8443/
  kubectl -n default port-forward $POD_NAME 8443:8443
}

function decode64 {
  echo $1 | base64 --decode
}
