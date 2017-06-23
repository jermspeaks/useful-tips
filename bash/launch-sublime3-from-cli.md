# Launch Sublime Text 3 from the command line

Written on January 20, 2014

Sublime Text 3 ships with a CLI called `subl`. By default you can't use this command line utility unless you do some fiddling.

### A word about the load $PATH

The Sublime Text documentation on this tool does explain where it's located (/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl) but it assumes you have ~/bin (or /Users/username/) in your load path ($PATH) which is downright silly. There's a better way.

The /usr/local/bin is in the load path by default on OS X, so it's a much better place to symlink (create a symbolic link — or shortcut) that will allow you to run the subl utility from your Terminal app.

First up, check your own $PATH by running: echo $PATH. This is what mine returns:

1
```
/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
```
As you can see the /usr/local/bin path is included by default on OS X.

## Installation

Note: These instructions assume you're using the Terminal app out of the box, without ZSH or any fancy prompts like that. I trust you will be able to adapt these instructions yourself if you do.

1

```bash
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
```

Yes, I name the symlink sublime instead of subl because I believe you should always be explicit. You should never have to type the full word anyway. Typing sub + Tab should auto-complete the full name of the symlink.

## Testing

Open a Terminal window and run:

1
sublime ~/Documents
or

1
2
cd
sublime Documents/
or even

1
2
# to open the entire current directory
sublime .
Conclusion

Now you don't need to get out of Terminal to simply open a file or a folder, you didn't have to add an "alias" or yet another bin directory to your .bash_profile which the official instructions given by the Sublime team seems to recommend.

Have fun, Sublime is a great editor. Check out the most recent beta release of Sublime Text 3.
