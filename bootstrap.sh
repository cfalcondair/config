brew install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

for i in .*; do
  if [[ $i != *".git"* ]]; then
    ln -s $(pwd)/$i ~
  fi
done
