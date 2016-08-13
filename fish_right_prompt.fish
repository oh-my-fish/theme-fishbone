

function fish_right_prompt

    set_color 555
    show_git_info
    echo -en (date +%H:%M:%S)
    set_color normal
end


function show_git_info -d "Show git repository information"

    set --local LIMBO /dev/null
    set --local git_status (git status --porcelain 2> $LIMBO)
    set --local dirty ""

    [ $status -eq 128 ]; and return # Not a repository? then return

    if not [ -z (echo "$git_status" | grep -e '^ M') ]
        set dirty "*"
    end

    if not [ -z (echo "$git_status" | grep -e '^[MDA]') ]
        set dirty "$dirty+"
    end

    if not [ -z (git stash list) ]
        set dirty "$dirty^"
    end

    echo -en "("
    echo -en (git rev-parse --abbrev-ref HEAD)$dirty
    echo -en ") "
end
