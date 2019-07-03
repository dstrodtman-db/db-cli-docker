docker build -t db-cli .

if grep -e ". "$PWD"/alias.sh" ~/.bash_profile; then
  echo "Using alias at" $PWD
else 
  echo ". "$PWD"/alias.sh" >>~/.bash_profile
  . ~/.bash_profile
  echo "Alias set"
fi
