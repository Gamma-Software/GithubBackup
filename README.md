# GithubBackup
Retrieve your github repositories and backup them

# Requirements
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
Select the Repo: and admin:org permissions.
# Usage
Run the script `./backup.sh .env` to backup your repositories.