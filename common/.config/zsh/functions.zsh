# fcd() {
#     local dir
#     dir=$(fd --type d . | fzf) || return
#     cd "$dir"
# }
#
# fe() {
#     local file
#     file=$(fd --type f . | fzf) || return
#     nvim "$file"
# }
#
# mkcd() {
#     mkdir -p "$1" && cd "$1"
# }
#
# extract() {
#     # handles zip, tar.gz, xz, etc.
# }
#
# weather() {
#     curl wttr.in
# }
#
# groot() {
#     git rev-parse --show-toplevel
# }
#
# gclean() {
#     git fetch --prune
#     git branch --merged | grep -v '\*' | xargs -r git branch -d
# }

