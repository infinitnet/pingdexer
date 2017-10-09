# Pingdexer

## Description
This is a very simple shell script to ping XML-RPC servers about new URLs. WordPress has this type of feature built-in, but when you use a different CMS or want to get URLs of sites indexed that aren't under your control, this tool might help.

## Usage
All you need is `bash` and `curl` to run this script.

`bash pingdexer.sh 'Site Name' 'https://domain.com/' 'https://domain.com/new-url/'`

- 'Site Name' = Name of the website/blog
- 'https://domain.com/' = Main URL of the site
- 'https://domain.com/new-url/' = URL you want to get indexed

