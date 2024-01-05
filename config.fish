if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		set WM $(gum choose "LeftWM" "Hyprland" "Qtile")
		if [ $WM = "LeftWM" ]
        	exec startx ~/.xinitrc leftwm -- -keeptty
		else if [ $WM = "Qtile" ]
			exec startx ~/.xinitrc qtile
		else if [ $WM = "Hyprland" ]
			Hyprland
		end
    end
end

if status is-interactive
	starship init fish | source
	set fish_greeting   # Commands to run in interactive sessions can go here
	alias ls="exa -l --group-directories-first -s Extension"
	alias la="exa -la --group-directories-first -s Extension"
	alias ll="exa -la --group-directories-first -s Extension -T -L 2"
	contains $HOME/.cargo/bin/ $fish_user_paths; or set -Ua fish_user_paths $HOME/.cargo/bin/
end
