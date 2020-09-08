#!/usr/bin/env bash

if [ -z "$BACKUP_FILE_PREFIX" ]; then
  BACKUP_FILE_PREFIX='backup'
fi
if [ -z "$BACKUP_DIR_PATH" ]; then
  BACKUP_DIR_PATH='/backups'
fi


