

function fish_right_prompt -d "Right side prompt message"

    # A dark grey
    set --local dark_grey 555

    set_color $dark_grey

    show_virtualenv_name
    show_git_info
    echo -en (date +%H:%M:%S)

    set_color normal
end


function show_virtualenv_name -d "Display the name of the current virtualenv"

    if set -q VIRTUAL_ENV
        echo -en "["(basename "$VIRTUAL_ENV")"] "
    end
end


function show_git_info -d "Show git repository information"

    set --local LIMBO /dev/null
    set --local git_status (git status --porcelain 2> $LIMBO)
    set --local dirty ""

    [ $status -eq 128 ]; and return  # Not a repository? Nothing to do

    # If there is modifications, set repository dirty to '*'
    if not [ -z (echo "$git_status" | grep -e '^ M') ]
        set dirty "*"
    end

    # If there is new or deleted files, add  '+' to dirty
    if not [ -z (echo "$git_status" | grep -e '^[MDA]') ]
        set dirty "$dirty+"
    end

    # If there is stashed modifications on repository, add '^' to dirty
    if not [ -z (git stash list) ]
        set dirty "$dirty^"
    end

    # Prints git repository status
    echo -en "("
    echo -en (git_branch_name)$dirty
    echo -en ") "
end
