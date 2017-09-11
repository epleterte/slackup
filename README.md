# slackup

Slackup is a simple CLI Slack client.
It supports reading config from a config file, from environment variables and from parameters passed directly to the script.
Slackup will read from file if one is passed - if not, Slackup defautls to reading from stdin.

Config
======
_~/.slackup.cfg_ or _/etc/slackup.cfg_ will be read if they exist. _~/.slackup.cfg_ takes precedence if it is found.

    slack_token: 'xoxp-YOUR-TOKEN-HERE'
    slack_channel: '#slackup'

Usage
=====

    usage: slackup [-h] [-v] [-c CHANNEL] [-t TOKEN] [-u USERNAME] [-s] [-f FILE] [message]
    
    positional arguments:
      message               message to post to slack
    
    optional arguments:
      -h, --help            show this help message and exit
      -v, --verbose         increase output verbosity
      -c CHANNEL, --channel CHANNEL
                            specify channel to post to
      -t TOKEN, --token TOKEN
                            set token to use
      -u USERNAME, --username USERNAME
                            set Slack username to post as
      -s, --snippet         Post message as attachment/snippet
      -f FILE, --file FILE  read message from file or stdin


Examples
========

    echo 'HELLO' | slackup -c 'someotherchannel' -f -
    slackup "greetings fellow kids"
    slackup -s -f inputfile.txt
    
