export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket" #ssh-agent configuration
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi