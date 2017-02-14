# git: Pushing to a Remote Branch with a Different Name

### [Source](https://penandpants.com/2013/02/07/git-pushing-to-a-remote-branch-with-a-different-name/) by JIFFYCLUB

Normally when I do a push in git I do something like git push origin master, which really means push from the local branch named master to the remote branch named master. If you want to push to a remote branch with a different name than your local branch, separate the local and remote names with a colon:

```bash
git push origin local-name:remote-name
```

