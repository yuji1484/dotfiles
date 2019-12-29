export PATH=$HOME/.nodebrew/current/bin:$PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7.4/bin:${PATH}"
export PATH





# Setting PATH for rbenv
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

source ~/.bashrc
