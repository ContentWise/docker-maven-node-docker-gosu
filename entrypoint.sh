#!/bin/bash

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-9001}

useradd --shell /bin/bash -u $USER_ID -o -c "" -M -d $HOME user

chown user:user $HOME

exec /usr/local/bin/gosu user bash -c "mkdir -p /home/user/.docker && echo '{}' > /home/user/.docker/config.json && $@"
