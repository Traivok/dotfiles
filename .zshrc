source /usr/share/zsh/share/antigen.zsh
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

#powerlevel setup
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator)
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}' # 21:19

# Tell Antigen that you're done.
antigen apply
