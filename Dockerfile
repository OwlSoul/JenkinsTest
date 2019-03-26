# Test dockerfile, destined to fail or succeed depending on final stage

FROM ubuntu:latest

# This step will succeed
ADD README.md /

# This step will fail
ADD non-existent-file /
