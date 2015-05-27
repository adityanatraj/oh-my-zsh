# OLD Stuff
#function virtualenv_prompt_info(){
#  [[ -n ${VIRTUAL_ENV} ]] || return
#  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
#}

# disables prompt mangling in virtual_env/bin/activate
#export VIRTUAL_ENV_DISABLE_PROMPT=1

export VIRTUAL_ENV_PATH="$HOME/Code/work/environments"

function activate () {
        local project=$(basename $PWD)
        if [ -d $VIRTUAL_ENV_PATH/$project ]; then
                source $VIRTUAL_ENV_PATH/$project/bin/activate
        fi
}

