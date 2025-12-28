fpath=(~/zsh-util/build $fpath);
autoload -U $fpath[1]/*(.:t)


# enable zsh colors and prompt parameter expansion
autoload -U colors && colors
setopt promptsubst

# enable colors for other programs and npm debug
export CLICOLOR=1
export DEBUG_COLORS=1

# GCP Cloud
alias gc="gcloud"
alias gccgp="gcloud config get-value project"
alias gccsp="gcloud config set project"
alias gcp="gcloud projects"
alias gcpl="gcloud projects list --format=\"value(projectId)\""

alias gca-admin='gcloud config configurations activate billing-admin'
alias gca-flash='gcloud config configurations activate flashcards'
alias gca-tf='gcloud config configurations activate learn-tf'
alias gca-alice='gcloud config configurations activate alice'
alias gca-ecom='gcloud config configurations activate ecom'

# AWS Cloud
# variables - config
export AWS_PROFILE=bbd


# Work hub
export WORK_DIR=~/Work

# cd aliases
alias cddow="cd ~/Downloads"
alias cddoc="cd ~/Documents"
alias cddesktop="cd ~/Desktop"
alias cdpics="cd ~/Pictures"

# Work hubs
alias cdw="cd $WORK_DIR"
alias cdpl="cd $WORK_DIR/Planning"
alias cdplan="cd $WORK_DIR/Planning"
alias cdcons="cd $WORK_DIR/Planning/Consultations"
alias cdcs="cd $WORK_DIR/Planning/Consultations"
alias cdpc="cd $WORK_DIR/POC"
alias cdpoc="cd $WORK_DIR/POC"
alias cdp="cd $WORK_DIR/Products"
alias cdpd="cd $WORK_DIR/ProductDocs"
alias cdi="cd $WORK_DIR/Infra"
alias cdb="cd $WORK_DIR/Blog"
alias cdd="cd $WORK_DIR/Design"
alias cdco="cd $WORK_DIR/Content"
alias cdcp="cd $WORK_DIR/ClientProducts"
alias cdf="cd $WORK_DIR/Features"
alias cdfi="cd $WORK_DIR/Finance"

# dead
alias cdr="cd $WORK_DIR/Reinvention"
alias cdc="cd $WORK_DIR/CodeLibrary"
alias cdagy="cd $WORK_DIR/Antigravity"
alias cds="cd $WORK_DIR/Start"
alias cdu="cd $WORK_DIR/Unreal"
alias cdre="cd $WORK_DIR/DeepResearch"
alias cdres="cd $WORK_DIR/DeepResearch"
alias cdws="cd $WORK_DIR/WritingAndSpeaking"
alias cdsoc="cd $WORK_DIR/SocialMedia"
alias cdm="cd $WORK_DIR/MRE"
alias cdmre="cd $WORK_DIR/MRE"
alias cdmp="cd $WORK_DIR/MiniProjects"
alias cdma="cd $WORK_DIR/Market"
alias cdex="cd $WORK_DIR/Experiments"
alias cdge="cd $WORK_DIR/Generated"
alias cdt="cd $WORK_DIR/TaskLists"
alias cdtl="cd $WORK_DIR/TaskLists"
alias cdtc="cd $WORK_DIR/TempCode"
alias cdpm="cd $WORK_DIR/Prompts"
alias cdmi="cd $WORK_DIR/DataMining"
alias cdl="cd $WORK_DIR/Learning"
alias cdtmp="cd $WORK_DIR/Temp"
alias cdtemp="cd $WORK_DIR/Temp"

# Docs sub-areas
alias cdexd="cd ~/Documents/Excalidraw"
alias cddr="cd ~/Documents/Drawio"
alias cdov="cd ~/Documents/ObsidianVaults"
alias cdis="cd ~/Documents/ObsidianVaults/ImpromptuSpeaking"
alias cdtm="cd ~/Documents/ObsidianVaults/Toastmasters"

# OSS + projects
alias cdo="cd ~/OSS"
alias cda="cd $WORK_DIR/Products/Alice"
alias cde="cd $WORK_DIR/Products/Ecom"
alias cdbbd="cd $WORK_DIR/ClientProducts/BookBetterDirect"


# aliases
alias py="python3"
alias pip="pip3"
alias cobra="cobra-cli"
alias sb="supabase"

alias srv="py -m http.server"
alias server="py -m http.server"

# time aliases
alias dtf="datetimef"
alias dymd="dateymd"

# system aliases
alias ll="ls -la"
alias llt="ls -lat"
alias tdu="top_disk_usage"
alias dus="du -sh"

# ai aliases
alias gm="gemini --sandbox"
alias cx="codex"
alias cxc="codex -C ."
alias cla="claude"


# antigravity aliases
alias an="agy"
alias azu="agy ~/zsh-util"
# alias azp="agy ~/.zprofile"
# alias azc="agy ~/.zshrc"

# vscode aliases
co() { code "${1:-.}"; }
# alias czc="code ~/.zshrc"
# alias czp="code ~/.zprofile"
# alias czu="code ~/zsh-util"

# git aliases
alias gcl="git clone --depth 1"
alias gpa="git remote set-branches origin '*' && git pull" # pull all the missing branches in a repo cloned with --depth 1
alias gclf="git clone"
alias gi="git init"
alias gs="git status"
alias gl="git log --graph --decorate --pretty=format:'%C(auto)%h %Cgreen%ad %Cblue(%an) %Creset%s %Cred%d' --date=iso"
alias gd="git diff"
alias ga="git add"
alias gaa="git add ."
alias gcam="git commit --amend"
alias gf="git fetch"
alias gp="git pull"
alias gpu="git push"
alias pu="git push"
alias gpuf="git push --force"
alias gco="git checkout"
alias gcm="git checkout main"
alias gcom="git checkout main"
alias gcb="git checkout -b"
alias gcob="git checkout -b"
alias gca="git_commit_all"
alias ca="git_commit_all"
alias gb="git branch"
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias grbom="git rebase origin/main"
alias grs="git reset --soft HEAD~1"

alias cap="git_commit_all_and_push"

# git backup branches
alias gbb="create_git_backup_branch"

# gitfiles aliases
alias gfue="create_gitfiles_ue"
alias gic="create_gitignore_cpp"
alias gin="create_gitignore_node"

# gh aliases
alias gpc="gh pr create"
alias gpv="gh pr view --web"
alias grv="gh repo view --web"
alias grf="gh repo fork --remote"
alias grr="gh repo rename"

alias grc="gh repo create ${PWD##*/} --private"

# docker aliases
alias dc="docker compose"
alias dps="docker ps"


# bun
alias br="bun run"
alias bi="bun install"
alias bd="bun dev"
alias bt="bun test"
alias ba="bun add"
alias bcnext="bun create next-app" # create next app
alias bsha="bunx --bun shadcn@latest init" # init shadcn
alias bsha="bunx --bun shadcn@latest add" # add shadcn component

# vite
alias bcv="pnpm create vite"
alias bcv="bun create vite"


# deno
alias di="deno init"
alias da="deno add"
alias dr="deno run"
alias dra="deno run -A"
alias dt="deno task"
alias dtb="deno task build"
alias dte="deno test"

# node

# pnpm
alias niy="pnpm init -y"
alias ni="pnpm install"
alias nr="pnpm run"
alias nrt="pnpm run test"
alias nrd="pnpm run dev"
alias nrb="pnpm run build"
alias nrtc="pnpm run typecheck"
alias nrl="pnpm run lint"
alias nrf="pnpm run format"
alias nrm="pnpm remove"
alias npmr="pnpm remove"

alias nrdbu="pnpm run db:up"
alias nrdbd="pnpm run db:down"

# oxlint
alias iox="pnpm add -D oxlint && pnpx oxlint --init"


# kysely
alias ky="npx kysely-ctl"
alias kym="npx kysely-ctl migrate"

# terraform
alias tf="terraform"

# pulumi
alias pul="pulumi"


# uv aliases
alias ur="uv run"
alias uvt="uv run pytest"


# dotfiles aliases
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dfco="dotfiles checkout"
alias dfb="dotfiles branch"
alias dfc="dotfiles commit -am"
alias dfs="dotfiles status"
alias dfd="dotfiles diff"
alias dfp="dotfiles pull"
alias dfpu="dotfiles push"
alias dfl="dotfiles log"
alias dfrbom="dotfiles rebase origin/main"
alias dfrv="gh repo view --web j-sustr/dotfiles"

alias dfcap="dotfiles commit -am 'u' && dotfiles push"

# sqlcmd
alias sc="sqlcmd"
alias scc="sqlcmd config"
alias sccc="sqlcmd config current-context"


## C/C++
alias cl="g++ -std=c++23 main.cpp -o ./main && ./main"

alias uc="update_cmakelists"
alias ucm="update_cmakelists"

alias cmc="cmake -S . -B build"
alias cmcd="cmake -S . -B build -DCMAKE_BUILD_TYPE=Debug"
alias cmcn="cmake -S . -B build -G Ninja"
alias cmcnd="cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=Debug"

alias cb="cmake --build build"
alias cbj="cmake --build build -j"
alias cmb="cmake --build build"

alias ct="ctest --test-dir build --output-on-failure"

alias cr="cmake --build build && ./build/src/App"
alias cmr="cmake --build build && ./build/src/App"

alias emsdk="source /Users/jan/OSS/Wasm/emsdk/emsdk_env.sh"

alias tcm="touch CMakeLists.txt"


# fnm
eval "$(fnm env --shell zsh)"


# utils
wn() {
  date +%V
}

# concat files

cfa() {
  concat_text_files "${1:-.}" "$2" | pbcopy
  echo "✅ Files copied to clipboard"
}

cfts() {
  concat_text_files "${1:-.}" ".ts" | pbcopy
  echo "✅ TypeScript files copied to clipboard"
}

cfjs() {
  concat_text_files "${1:-.}" ".js" | pbcopy
  echo "✅ JavaScript files copied to clipboard"
}

cfwgsl() {
  concat_text_files "${1:-.}" ".wgsl" | pbcopy
  echo "✅ WGSL files copied to clipboard"
}

cfh() {
  concat_text_files "${1:-.}" ".h" | pbcopy
  echo "✅ Header files copied to clipboard"
}

cfcpp() {
  concat_text_files "${1:-.}" ".cpp" | pbcopy
  echo "✅ C++ files copied to clipboard"
}



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jan/google-cloud-sdk/completion.zsh.inc'; fi

. "$HOME/.local/bin/env"

# pnpm
export PNPM_HOME="/Users/jan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/jan/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# bun completions
[ -s "/Users/jan/.bun/_bun" ] && source "/Users/jan/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Added by Antigravity
export PATH="/Users/jan/.antigravity/antigravity/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# direnv
eval "$(direnv hook zsh)"
