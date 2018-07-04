install.packages("shinythemes")
library("shinythemes")

## Steps to push repo to git-hub

## Create a git-hub repo and then:

# mkdir same_name_of_gh_repo
# cd same_name_of_gh_repo

# git init
# git add README.md
# git commit -m "first commit"
# git remote add origin https://github.com/ejvalero/compustore.git
# git push -u origin master. Ir error git push -f origin master 

## create a new heroku application and deploye
# heroku create compustore --buildpack https://github.com/virtualstaticvoid/heroku-buildpack-r.git#heroku-16
# git push heroku master

## 