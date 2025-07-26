if status is-interactive
    starship init fish | source
    fastfetch
    set -g fish_greeting

end
function fish_user_key_bindings
    bind \cl 'clear; commandline -f repaint'
end


fish_add_path /home/lemonade/.spicetify
