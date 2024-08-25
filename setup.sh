mkdir -p ~/.scripts

cat $1/.devcontainer/.gitconfig >> ~/.gitconfig
cp -R $1/.devcontainer/.ssh/ ~/.ssh/

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.scripts/.git-completion.bash

# append strict package manager flag to .npmrc
echo 'package-manager-strict=false' >> ~/.npmrc

# append git completion to .bashrc
echo $'
# git completion
test -f ~/.scripts/.git-completion.bash && . $_' >> ~/.bashrc

# append key-manager.sh to .bashrc
echo "

# Simple SSH key manager for generating and assigning ssh keys
alias km='. ~/.ssh/key-manager.sh'
alias kw='. ~/.ssh/workflow.sh'
" >> ~/.bashrc

# append globstar setup to have ** key work recursive (e.g., wc -l **/*)
echo "

shopt -s globstar
" >> ~/.bashrc

# prompt to generate,add,publish ssh key to bitbucket
echo "

# Add key to bitbucket settings

    km bb
    echo
    cat ~/.ssh/bitbucket.pub
    echo https://bitbucket.org/account/settings/ssh-keys/

"