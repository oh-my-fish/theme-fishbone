

function fish_prompt -d "Fishbone custom prompt"

    # Keep the command executed status
    set --local last_status $status

    show_path
    show_status $last_status
end


function show_path -d "Prints current directory abbreviated"

    set_color blue
    echo -en "["

    set_color yellow
    echo -en (prompt_pwd)

    set_color blue
    echo -en "] "
end


function show_status -a last_status -d "Prints red/grey colon based on status"

    set --local current_color "FFF"

    if [ $last_status -ne 0 ]
        set current_color red
    end

    set_color $current_color
    echo -en ": "
    set_color normal
end
