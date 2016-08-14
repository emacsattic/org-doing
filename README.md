# org-doing

[![Build Status](https://travis-ci.org/omouse/org-doing.svg)](https://travis-ci.org/omouse/org-doing)
[![MELPA](http://melpa.org/packages/org-doing-badge.svg)](http://melpa.org/#/org-doing)
[![License](http://img.shields.io/:license-gpl3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0.html)
[![Flattr This](http://button.flattr.com/flattr-badge-large.png)](https://flattr.com/submit/auto?fid=y0jx3j&url=https%3A%2F%2Fgithub.com%2Fomouse%2Forg-doing)

Inspired by [doing](https://github.com/ttscoff/doing/), a set of
functions for keeping track of what you're doing right now.

## How it works

Creates a `doing.org` file in your home directory (or wherever
`org-doing-file` points to). The file has two sections: now and
later. The now section lists things you are currently working on. The
later section lists things you want to work on later.

## Use it

### Org-Doing Functions

Log what you're doing now:

    M-x org-doing-log

Log what you're doing later:

    C-u M-x org-doing-log

Log something you've already done:

    M-x org-doing-done

Mark your most recent TODO as DONE:

    M-x org-doing-done
    (don't enter anything and press Enter)

### Org-Doing Omni Function

The omni function lets you enter short-hands at the beginning, making it very quick to use org-doing:

    M-x org-doing
    now reviewing email, getting ready for a nap. seriously

The "now" is parsed and the `org-doing-log` function is called with
the rest of the string. It's the same as doing this:

    M-x org-doing-log
    reviewing email, getting ready for a nap. seriously

This is also works for later and for done:

    M-x org-doing
    later adding more cool features to org-doing mode

    M-x org-doing
    done added something simply amazing to org-doing mode

    M-x org-doing
    done

## From The Bash Command-Line

You can also use org-doing from the command line by defining the
`ORG_DOING_PATH` environment variable to the location of
`org-doing.el` and by sourcing `org-doing.bash`:

    ORG_DOING_PATH=/path/to/org-doing.el
    source /path/to/org-doing.bash
    doing now awesome stuff
    doing later more awesome
    doing done something cool
    doing done

# Hacking on org-doing

Start by installing all the dependencies in the Caskfile:

    cask install

We use GNU Make for running unit tests, feature tests and for installing org-doing.

Run the tests:

    make test
    make unit # run the unit tests using ERT
    make ecukes # run the feature tests using ecukes

[ERT](https://www.gnu.org/software/emacs/manual/html_mono/ert.html) is the Emacs Lisp Regression Testing framework. [Ecukes](https://github.com/ecukes/ecukes) is an implementation of Cucumber/BDD. [El-mock](http://emacswiki.org/emacs/EmacsLispMock) is used for mock objects/stubbing in the unit tests.

Unit tests are in the `test/` directory. Higher level/integration/functional specs are in the `features/` directory.

# Contributors

* Adrien Becchis @AdrieanKhisbe
* Bjarte Johansen @ljos
* Greg Lucas @glucas
* Rudolf Olah @omouse
* Steve Purcell @purcell
* Syohei YOSHIDA @syohex
