Realiaser
====================

Realiaser is a game which helps you memorize your shell aliases.

If you are like me, you have a lot of shell aliases but don't want to spend much time memorizing them. This gem helps remind you that you have defined an alias by telling you everytime you write a command where you should have used an alias.

I defined the point system to work as follows. +1 pt for every command executed which was executed properly. -50 for every time I forget to use an alias.

This is a pretty small library, only a two hour hack, but I've already started using more of my aliases because of the positive feedback loop it provides.

Features
---------------------

* Tells if you if your last command was too long.
* Keeps track of your score.
* Keeps track of your last successful command and unsuccessful command.
* Doesn't modify your ENV in any way.
* Works on ZSH.

Installation
---------------------

There are two parts to the installation. The library and integrating it with your shell.

```script
# install the gem (sudo is optional)
sudo gem install realiaser

# the ruby script needs to be able to access aliases defined in the shell conf
alias > ~/.aliases.cache
```

```
function last_command() {
  echo `history -1 | cut -d ' ' -f 3-20 | /usr/bin/ruby ~/Development/realias/lib/reminder.rb`
}

RPROMPT='%{$fg[$NCOLOR]%}%p $(last_command)%{$reset_color%}'
````

Update
---------------------

```script
gem update realiaser
````

LOL, WTF
---------------------

Yep, and I would do it again.