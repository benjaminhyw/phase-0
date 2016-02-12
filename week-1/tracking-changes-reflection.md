How does tracking and adding changes make developers' lives easier?
Tracking and adding changes make developers' lives easier beause it allows them to see where they are in the step timeline.  We're able to see what has/hasn't been done, and allows us to pick up from where we left off or at least find out what needs to be done in order to move on.

What is a commit?
A commit is a save point on GitHub.  You commit by typing git commit.  We try to be as specific with our commits however, so we try and use git commit -m "detailed message regarding what changes were made for the commit".  We do this to better keep track of what changes have been made so we know where to go from there.

What are the best practices for commit messages?
The best thing to do is to be as specific as possible.  You didn't just add text, what type of text did you add?  The more precise you are, the better everyone else is.  It's also good to commit messages as soon as changes are made.  They are save points.  The more you have, the easier it is to navigate through the steps and backtrack is needed.

What does the HEAD^ argument mean?
the HEAD^ argument refers to the previous line entered on the terminal.  We've been taught about it in terms of git reset, in which case you would use if you commited something you no longer want commited.  You'd type in git reset --soft HEAD^ for the very last thing you commited.  If you want to reset previous ones, then you would use HEAD~3 for the 3rd commit from HEAD, HEAD~4 for the 4th commit from HEAD, HEAD~5 for the 5th commit from HEAD, etc etc.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
To make a git change you should: add the text and save, check git status, then add the changes to the stage.  So basically you create content, you check the status to verify that a change has been made, then you add those changes to make sure to keep things in sync.  The command for moving files from one stage to another is mv file-name .  

Write a handy cheatsheet of the commands you need to commit your changes.
Well for starters, you need to make sure you are on your branch and not the master.

git checkout branch-name = this changes to the branch you want to use.

ls = list directory
I found checking the directory useful when you navigate because it tells you everything that's there.

cd = change directory
you would use this by typing cd directory-name
This allows you to move into folders to see files or create new files

git status = check the status of the commits
You should always save after making any changes.
git status allows you to see if any changes are ready to be commited.

git commit -m "detailed message" = confirmation of the commit plus a message describing the changes
git commit just confirms the commit.  We add the -m "detialed message" however because that way we're able to better track our commits and reason for making a commit.

git push origin file_name = this pushes your new version of the file up to GitHub.
This is important to finalize the sequence.  You need to push to GitHub then do a pull request from the master so you can merge the two (and then delete the old branch once merged)


What is a pull request and how do you create and merge one?
A pull request is a GitHub feature that basiacally syncs the work I did from local to remote (aka from my laptop to the cloud).
Once you're done with the commit, you have to push it up to GitHub by typingin git push origin file_name
By doing so, GitHub automatically senses that a pull request is needed, in which case you jus follow the steps (Create pull request, merge, finalize merge, delete old branch).

Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because everyone can access and see the everything revolving the request: what is being changed, by whom, and for what reason.  It's a pretty nice way to communicate the thought process behind commits in a programmer way.