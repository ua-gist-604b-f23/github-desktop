# Assignment: GitHub Desktop
## Background
So far we've edited our GitHub files directly in the browser, but this is actually a special case.
A more typical workflow for a developer working on an existing project is as follows:

1) Clone a repo (download all the files from a repo to your local computer)
2) Create a branch
3) Make local edits and commit them to the branch
4) Push the local changes to the remote repository
5) Submit `Pull request` for branch to be merged with the master branch.

##

## Get started with GitHub Desktop
### 1. Download GitHub Desktop
In order to take on this workflow, you need a `git` client. For this class, I recommend *GitHub Desktop*, which can download
from [https://desktop.github.com/](https://desktop.github.com/). 

### 2. Setup GitHub Desktop with your username/password
Follow the installation and setup instructions at https://help.github.com/en/desktop/getting-started-with-github-desktop

### 3. Clone this repository
- Now that you have Github Desktop installed and configured for your account, it is time to clone THIS repository. If you don't see 
the green "Clone" button ![clone_button.png](clone_button.png), click on the `<> Code` tab at the top of this page to get to
this repository's root. Click on the "Clone" button to get the URL of this repository.

- Switch to GitHub Desktop and click on *File* -> *Clone Repository*. It will probably default to your `Documents` folder. 
GitHub Desktop will like to put all your repositories in the same directory so just pick one that makes sense. 
Note that you will need to navigate to this folder from QGIS and other applications later since this is how project files 
and data will be handled for this class.

- Enter the URL from the step above and click "Clone". 

### 4. Create a new branch
From GitHub Desktop, create a new Branch by clicking `Branch` -> `New Branch`. Give it the name `desktop`. 

### 5. Take a screen shot of your GitHub Desktop
Take a screen shot of your GitHub Desktop showing this Repository (`1-5-github-desktop`) and the Current Branch as `desktop`.

### 6. Copy screen shot to this branch, locally.
In GitHub Desktop you should see a link to `open this repository` -- That will open the folder where this repository is checked out 
on your local computer. Name the screenshot `github-desktop-screenshot.png`. Next, copy the screenshot you made to this folder. 

### 7. Commit new files 
In the bottom left corner of the GitHub Desktop window, enter a Comment and then click `Commit to desktop`. This doesn't actually copy the file to the remote repository but it flags it in your local copy that it needs to be pushed to the remote 
repo. Verify by refreshing the `<> Code` page for this repo in the browser and checking the branches drop-down.

### 8. Push commit to remote repo
Click `Publish` or `Push origin` in the menu at the top of GitHub Desktop. This will upload the screen shot you took to the branch on GitHub. Again, verify by refreshing the `<> Code` page for this repo in the browser and checking the branches drop-down. 

### 9. Create Pull request
In GitHub Desktop, click `Branch` -> `Create Pull request`. This will open the GitHub.com website where you can submit the PR. 


## Deliverable:
- You have submitted a pull request to merge a branch, `desktop`, with `master`
- The branch contains a file, `github-desktop-screenshot.png`, which is a screenshot of your GitHub Desktop at Step 4.

## Troubleshooting issues with CI:
There are a couple reasons why the GitHub Actions might fail:
1) The branch name is not `desktop`. If this is the case, you can rename the branch in GitHub Desktop using the `Branch`->`Rename` drop-down. Remember that you will need to push to remote if you change something in GitHub Desktop.
2) The branch is missing the file, `github-desktop-screenshot.png`. Some possible causes:
  - the file was not added to the repo
  - the file was added to the wrong branch
  - the branch was not pushed to remote
  - the filename does not match exactly `github-desktop-screenshot.png`
