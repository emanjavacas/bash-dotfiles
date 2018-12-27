
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Locale
export LANG="en_US.utf-8"
export LC_ALL="en_US.utf-8"

# LD_LIBARY_PATH
export LD_LIBRARY_PATH="/usr/local/lib"
export LD_LIBRARY_PATH="/opt/lib"

# Path
export PATH="/usr/local/lib:$PATH"
export PATH="/home/manjavacas/.cask/bin:$PATH"
export PATH="/opt/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Python
export PYTHONPATH="$PYTHONPATH:/home/manjavacas/code/python/seqmod"
export PYTHONPATH="$PYTHONPATH:/home/manjavacas/code/python/pie"
export PYTHONPATH="$PYTHONPATH:/home/manjavacas/code/python/text-matcher"
export PYTHONPATH="$PYTHONPATH:/home/manjavacas/code/python/swalign"

# NPM: no-sudo npm
export NPM_PACKAGES="/home/manjavacas/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
export PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath`
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Java
# export M2_HOME=/usr/local/apache-maven-3.3.3

# Run ssh-agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add ~/.ssh/id_rsa
fi

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv virtualenv-init -)"
