# fish theme: gentoo

function fish_right_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l red (set_color -o red)
  set -l normal (set_color normal)

  # print last exit code if nonzero:
  if test $last_status -ne 0
    set_color red
    printf '%d' $last_status
    set_color normal
  end

    # show git branch and dirty state, if applicable:
  if [ (_git_branch_name) ]
    set -l git_branch '[' (_git_branch_name) ']'

    if [ (_is_git_dirty) ]
      set git_info $red $git_branch "×"
    else
      set git_info $cyan $git_branch
    end
    echo -n -s ' ' $git_info $normal
  end



  # # display the timestamp on the utmost right.
  # echo -n -s $normal ' [' (date +%H:%M:%S) ']'
end
