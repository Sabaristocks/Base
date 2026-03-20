#!/bin/bash

# Array of sample commit messages
messages=(
  "feat: implement initial project scaffold"
  "feat: add basic routing for home page"
  "fix: resolve null pointer exception in auth"
  "refactor: simplify logic in user controller"
  "docs: update README with installation steps"
  "chore: update npm dependencies"
  "test: add unit tests for auth logic"
  "perf: reduce bundle size by 20%"
  "style: update color palette for branding"
  "feat: integrate user authentication logic"
)

# Create a dummy file if it doesn't exist
touch contribution_log.txt

# Loop 100 times
for i in {1..100}
do
   # Pick a random message from the array
   msg=${messages[$RANDOM % ${#messages[@]}]}
   
   # Make a small change to the file
   echo "Update number $i at $(date)" >> contribution_log.txt
   
   # Stage and commit
   git add contribution_log.txt
   git commit -m "$msg (Iteration $i)"
done

echo "Done! 100 commits generated."
