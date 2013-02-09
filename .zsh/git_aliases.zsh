alias s='git status -s $argv; return 0'
alias ga='git add'
alias gap='ga -p'
alias gau='git add -u'
alias gb='git branch -v'
alias gbr='git branch -v'
gc() {
  git diff --cached | grep '\btap[ph]\b' >/dev/null &&
    echo "\e[0;31;29mOops, there's a #tapp or similar in that diff.\e[0m" ||
    git commit -v "$@"
}
alias gc!='git commit -v'
alias gca='git commit -v -a'
alias gcam='gca --amend'
alias gch='git cherry-pick'
alias gcm='git commit -v --amend'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcop='gco -p'
alias gd='git diff -M'
alias gd.='git diff -M --color-words="."'
alias gdc='git diff --cached -M'
alias gdc.='git diff --cached -M --color-words="."'
alias gf='git fetch'
git-new() {
  [ -d "$1" ] || mkdir "$1" &&
  cd "$1" &&
  git init &&
  touch .gitignore &&
  git add .gitignore &&
  git commit -m "Added .gitignore."
}
alias glog='git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" --date-order'
alias gl='glog --graph'
alias gla='gl --all'
gls() {
  query="$1"
  shift
  glog --pickaxe-regex "-S$query" "$@"
}
alias gm='git merge --no-ff --no-edit'
alias gmf='git merge --ff-only'
alias gp='git push'
alias gpt='gp --tags'
alias gr='git reset'
alias grb='git rebase -p'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grh='git reset --hard'
alias grp='gr --patch'
alias grsh='git reset --soft HEAD~'
alias grv='git remote -v'
alias gs='git show'
alias gs.='git show --color-words="."'
alias gst='git stash'
alias gstp='git stash pop'
alias gup='git smart-pull'
gupstation() {
  gup
  gf production
  gf staging
}
alias graf='git remote add $argv[1] $argv[2] && gf $argv[1]'