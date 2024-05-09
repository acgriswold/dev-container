mkdir -p ~/.ssh
mkdir -p ~/.scripts

cat $1/.devcontainer/.gitconfig >> ~/.gitconfig
cp $1/.devcontainer/key-manager.sh ~/.ssh/key-manager.sh

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.scripts/.git-completion.bash

echo $'
# git completion
test -f ~/.scripts/.git-completion.bash && . $_' >> ~/.bashrc

echo "

# Simple SSH key manager for generating and assigning ssh keys
alias km='. ~/.ssh/key-manager.sh'
" >> ~/.bashrc