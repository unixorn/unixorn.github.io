#!/usr/bin/env bash
#
# Here are our backup settings
#
export B2_ACCOUNT_ID='your_b2_account_id'
export B2_ACCOUNT_KEY='your_b2_key'

# Use different directory prefixes for each backup repo
# so they can share a bucket without interference
export RESTIC_REPOSITORY='b2:your-restic-backups-bucket:dir-prefix'

# This is used as the encryption key for your backups. If you lose it,
# you won't be able to restore anything. I keep a copy of mine in my
# 1Password vault
export RESTIC_PASSWORD='your-encryption-key'

# If you want to exclude some directories from your backups, list
# them in an exclude file and set EXCLUDE_FILE
export EXCLUDE_FILE="--exclude-file=example-excludes"

# Uncomment if you only want to dry-run and not actually write any data
# to the backup repository
#export DRYRUN='--dry-run'

# What paths do we want to back up? Remember to use the paths as seen inside
# the jail, not the paths as seen in your TrueNAS environment
export BACKUP_PATHS="/mnt/path-inside-jail/share /mnt/path-inside-jail/anothershare"


# How many snapshots do we want to keep around?
export MINIMUM_SNAPSHOTS_RETAINED=4

export HOURS_RETAINED=48
export DAYS_RETAINED=14
export WEEKS_RETAINED=8
export MONTHS_RETAINED=12
export YEARS_RETAINED=5
