" bracketed paste mode support for tmux
if &term =~ '^screen\|^tmux' && exists('&t_BE')
  let &t_BE = "\033[?2004h"
  let &t_BD = "\033[?2004l"
  " t_PS and t_PE are key code options and they are special
  exec "set t_PS=" . "\033[200~"
  exec "set t_PE=" . "\033[201~"
endif
