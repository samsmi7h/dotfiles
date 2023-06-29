function fish_prompt
	set_color blue
	printf "%s" (basename $PWD)
	set_color green
	printf "%s" (get_git_branch)
	set_color red
	printf " λ "
end
