# VScode

Nothing special here just a repo to store regular automated backups of my VScode configuration.

`vscode_backup.sh` and `vscode_restore.sh` are pretty useful and can adapted to be used in conjunction with other commands as a more generic github_backup.sh.

### How to Use

Run either the backup `./vscode_backup.sh` or restore `./vscode_restore.sh`, ensuring your machine is authorised to push changes the repo. This works well in as a cronjob to fully automate the backup.

### NOTES:

Requires `code` to be installed on the local machine for use in the terminal. This is normally as easy as opening up the command pallet and running `Shell Command: Install 'code' command in PATH` the once in VSCode.
