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

    echo 'HELLO' | ./slackup -c 'someotherchannel'
