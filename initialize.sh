PREFIX=PREFIX_PLACEHOLDER

__conda_setup="$('$PREFIX/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$PREFIX/etc/profile.d/conda.sh" ]; then
        . "$PREFIX/etc/profile.d/conda.sh"
    else
        export PATH="$PREFIX/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "$PREFIX/etc/profile.d/mamba.sh" ]; then
    . "$PREFIX/etc/profile.d/mamba.sh"
fi
