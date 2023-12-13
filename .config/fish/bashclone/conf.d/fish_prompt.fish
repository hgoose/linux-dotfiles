# fish theme: gentoo

function _git_branch_name
  echo (command git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2>/dev/null)
end

function fish_prompt
  set fish_greeting
  set -l cyan (set_color -o cyan)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  set -l cwd (pwd | sed -e "s!^$HOME!~!g")
  # output the prompt, left to right:
  if [ (id -u) = "0" ];
    set cwd (basename $cwd)
    # display host
    echo -n -s $red (uname -n |cut -d . -f 1) " "
  else
    # display 'user@host:'
    echo -n -s $green (whoami) @ $green (uname -n|cut -d . -f 1) $normal":"
  end

  # display the current directory name:
  echo -n -s $blue $cwd $normal

  # terminate with a nice prompt char:
  if [ (id -u) = "0" ];
    set indicate '#'
  else
    set indicate '$'
  end
  echo -n -s $normal "$indicate " $normal
end
