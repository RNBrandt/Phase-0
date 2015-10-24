##How does tracking and adding changes make developers' lives easier?
Tracking the changes made during programming makes developers' lives easier because as each change is made to the code it is saved along with a message describing what implementation of the code is meant to accomplish.  This provides coders with the tools required to effectivly turn on and off any change that's made to the  code.
##What is a commit?
A commit is essentially a checkpoint for the data to be saved. In microsoft programs it would be command S, but because coding is often done collaborativly, in increadibly complex environments a commit saves in a more specific way, with more specific information.
##What are the best practices for commit messages?
Commit messages should be short with verbs in the imperative tense.  Imperative is important, rather than describing what you did in the commit code, it is meant to describe what will happen if the code is implemented.

Other best practices include.

//- a short <50 charachter summary

//- more detailed explanatory text if necessary

//- Bullet points can be used if there is a space after the bullet.

//- Hanging indents should also be used.

##What does the HEAD^ argument mean?

The HEAD^ argument is the Git way of describing the last commit.  This is important as you can have many commits and HEAD^ is easier to remember than HEAD~1, HEAD~2, HEAD~3 etc...

##What are the 3 stages of a git change and how do you move a file from one stage to the other?

-Stage 1 is 'Modified'.  A modified file is either a new or modified file that has not yet been committed to git.  This doesn't mean it hasn't been saved locally, in fact it's the opposite, these files have been saved locally, but not marked to be included in the next commit.  This is done simply by creating or working with a file you plan to commit.

Stage 2 is 'Staged'. Staged means you have marked a new or modified file to be committed in your next commit. the command for this is git add <filename>

Stage 3 is 'Committed'.  A file that has been committed has been included in your git repository with a commit message describing what the commit is meant to do.  This is done through the command list described in the following question.

##Write a handy cheatsheet of the commands you need to commit your changes?
git add- stages a file to be committed

git commit -m "message here" assuming the file has been staged for commit, this command commits the change.

git checkout master- checks on the master branch

git pull origin master- pulls the master file

git checkout <feature-branch-name>- navigates to your feature branch.

git merge master- merges any changes from the master file into your feature branch

-git push origin <feature-branch-name>- pushes the changes from the local copy to the remote repository)

##What is a pull request and how do you create and merge one?
-A pull request gathers the most recent version of the file you're working with.  This ensures the code you commit includes all changes by any member of the team.  A pull request is created with the following commands.
git checkout master- This simply moves your working directory to the master rather than any working folder you may be in.

git pull origin master- This pulls the master file, and shows any changes between your file and the master.

git checkout <feature-branch-name>- This navigates you back to the feature you're working on.

git pull origin master - This merges the most recent master into your file.

git push origin <feature-branch-name>- This pushes the file to a remote fork to be checked, before it is further incorperated into the master file.

git branch -d <feature-branch-name>- This merges your changes into the master branch, and is the last step in a pull request.

##Why are pull requests preferred when working with teams?
-Pull requests gather the most recent version of the code you're working with.  If you're working by yourself, (assuming you follow reasonabl file practices) you can be conifident that you're using the newest and best version of your code.  When you're working with a team that may not be the case so you want to be sure to pull the newest version of the project before merging your changes.  This also ensures you don't accidentally conflate two separate commits.