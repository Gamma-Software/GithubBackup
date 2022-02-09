# GithubBackup
Retrieve your public and private github repositories and backup them in a specific folder. It will also fetch all the branchs.

## Requirements
Install curl, jq, git with the following commands:
```
sudo apt update -y
sudo apt install -y curl jq git
```

Store the environment variables in a file called `.env` in the same directory as this file. As such:
```
TOKEN=github_token
GITHUB_USERNAME=username
DESTINATION=destination_directory
```

You can get the *github_token* by logging in to your github account and visiting the page https://github.com/settings/tokens/new.
Select the "repo:" and "admin:org" permissions.
## Usage
Run the script `./backup.sh .env` to backup your repositories.
On Linux, you can also create a cronjob to run the script every day at 1 a.m:
`0 1 * * 1 bash /path_to_script/backup.sh`