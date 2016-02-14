#Tracking Changes Reflection

How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows developers to keep track of all of the different changes they've made. By using git status they can see if they've modified files and if those files are staged to commit. If they have and want to keep those changes, they can add them to be committed.

What is a commit?
A commit is a "save" of a the changes you've made. It includes a timestamp, information on who made it, and a message about what the change is. Once a change is added, you can use git commit -m "[message]" to save it.

What are the best practices for commit messages?
Commit messages should be short and descriptive, so it is easy to understand what changes have been made. They shouldn't be in past tense.

What does the HEAD^ argument mean?
HEAD is the current commit you're on, so HEAD^ means the last commit. 

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are:
1. Modifying files to the working directory. You make whatever changes to the files you need.
2. You then stage the files by tracking and adding them.
3. You commit the staged files to permanently save them to the Git directory.

Write a handy cheat sheet of the commands you need to commit your changes.
git checkout -b [new-branch] : makes a new branch
git log : check commit history
git status : check status of local repo to see if files have been modified
git add . : adds all changes
git commit -m "[message]" : commits the added changes with a message
git reset --soft [HEAD^] to change older commits

What is a pull request and how do you create and merge one?
A pull request is a way to merge code from a feature branch into the master branch. 
To create on you do this command:
$ git push origin [branch-name]
On github click on a button that says "compare & pull request"
Make sure that base branch is master, and the comparison branch is the new branch. Update the title and description with the information about what is being changed, then click the pull request button. This creates a linkable page where other developers can review the changes and comment on them. You can then click the "merge pull request" button to merge the branch.

Why are pull requests preferred when working with teams?
Because multiple people use the master branch of the repository, just adding code to the branch could change what they're working on and put their clone of the repository out of sync. It is also important that others have a chance to review the changes you're making for errors before they are added to the master code.
