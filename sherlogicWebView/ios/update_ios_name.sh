#!/bin/bash

# Load environment variables from .env file
if [ -f ../.env ]; then
  export $(cat ../.env | xargs)
else
  echo ".env file not found!"
  exit 1
fi

# Check if APP_NAME variable is set
if [ -z "$APP_NAME" ]; then
  echo "APP_NAME variable not found in .env file"
  exit 1
fi

# Update Info.plist with the new app name
PLIST_PATH="./ios/appWebView/Info.plist"
if [ -f "$PLIST_PATH" ]; then
  /usr/libexec/PlistBuddy -c "Set :CFBundleDisplayName $APP_NAME" "$PLIST_PATH"
  echo "Updated Info.plist with app name: $APP_NAME"
else
  echo "Info.plist not found at $PLIST_PATH"
  exit 1
fi