# org-doing

Inspired by [doing](https://github.com/ttscoff/doing/), a set of
functions for keeping track of what you're doing right now.

## How it works

Creates a `doing.org` file in your home directory (or wherever
`org-doing-file` points to). The file has two sections: now and
later. The now section lists things you are currently working on. The
later section lists things you want to work on later.

## Use it

Log what you're doing now:

    M-x org-doing-log

Log what you're doing later:

    C-u M-x org-doing-log

Log something you've already done:

    M-x org-doing-done

Mark your most recent TODO as DONE:

    M-x org-doing-done
    (don't enter anything and press Enter)
