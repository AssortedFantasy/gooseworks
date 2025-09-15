#!/bin/bash

# Check if post name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <post-name>"
    echo "Example: $0 my-awesome-post"
    exit 1
fi

# Create the post path
POST_PATH="posts/$(date +%Y)/$(date +%m)/$(date +%d)/$1"
FULL_PATH="content/$POST_PATH/index.md"

# Check if the post already exists
if [ -f "$FULL_PATH" ]; then
    echo "Error: Post already exists at $FULL_PATH"
    echo "Choose a different post name or delete the existing post first."
    exit 1
fi

# Create the new post
echo "Creating new post: $POST_PATH"
hugo new "$POST_PATH/index.md"

if [ $? -eq 0 ]; then
    echo "✓ Post created successfully!"
    echo "📝 Edit: $FULL_PATH"
else
    echo "✗ Failed to create post"
    exit 1
fi