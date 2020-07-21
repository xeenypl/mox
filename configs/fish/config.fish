# Start X at login
status is-login && [ -z "$DISPLAY" -a $XDG_VTNR = 1 ] &&  exec startx -- -keeptty

set PATH $HOME/.config/scripts $HOME/.local/bin $HOME/.cargo/bin $PATH

# disale useless stus
function fish_greeting; end
function fish_mode_prompt; end

# seting up prompt
function fish_prompt
  set error $status
  set mode --bold red

  switch $fish_bind_mode
    case default;     set color --bold red
    case insert;      set color --bold white
    case replace-one; set color --bold white
    case visual;      set color --bold brmagenta
  end

  if [ $error -eq 0 ]
    printf '[%s%s%s] ' (set_color red)      (basename $PWD) (set_color normal)
    printf '[%s%s%s] ' (set_color $color)   $fish_bind_mode (set_color normal)
    echo -e "\n"
  else
    printf '[%s%s%s] ' (set_color red)      (basename $PWD) (set_color normal)
    printf '[%s%s%s] ' (set_color $color)   $fish_bind_mode (set_color normal)
    printf '[%s%s%s] ' (set_color red)      (echo $error)   (set_color normal)
    echo -e "\n"
  end
end


function l
    ls -al $argv
end

function md
    mkdir -p $argv
end

function tordel
  transmission-remote -l | awk ' $2 == "100%" && $4 "Done" {print $1}' | xargs -n 1 -I % transmission-remote -t % -r
end
