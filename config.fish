if status is-interactive
	# starship init fish | source
	set fish_greeting   # Commands to run in interactive sessions can go here
	export QT_QPA_PLATFORMTHEME=qt5ct
	export LIBVA_DRIVER_NAME=nvidia
	alias ls="exa -l --group-directories-first -s Extension"
	alias la="exa -la --group-directories-first -s Extension"
	alias ll="exa -la --group-directories-first -s Extension -T -L 2"
	contains $HOME/.cargo/bin/ $fish_user_paths; or set -Ua fish_user_paths $HOME/.cargo/bin/
	contains $HOME/renderdoc/build/bin/ $fish_user_paths; or set -Ua fish_user_paths $HOME/renderdoc/build/bin/
	contains $HOME/.local/bin/ $fish_user_paths; or set -Ua fish_user_paths $HOME/.local/bin/
end
