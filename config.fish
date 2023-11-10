if status is-interactive
	starship init fish | source
	set fish_greeting   # Commands to run in interactive sessions can go here
	alias ls="exa -l --group-directories-first"
end
