#!/bin/b__ash

# please edit and fix the shebang (above) to point to the bash shell

# Mon  8 Jul 20:51:12 UTC 2024

# Mon  8 Jul 03:55:50 UTC 2024
# ref  https://pikchr.org/home/uv/gpic.pdf

getkey() {
    echo ''
    echo '    wait 15 seconds for timeout    or'
    echo '    press ENTER to continue        or'
    read -t 15 -p '    press Ctrl+c to exit early: '
}

# - - - -   g r e e t   - - - -

echo ''
echo '      GUARD CLAUSE present.  Script does nothing until it is edited.'
echo ''
echo 'exiting early.  bye.'

# new user guard:

exit 0

# - - - -   m a i n   - - - -
echo 'NOTE:'
echo ''
echo '    this bash shell script creates new files in the current directory.'
echo '    script continues on its own in 15 seconds, under standard use.'

getkey

gpic << _EOF__ >> gpic_sampler.groff
.PS
.defcolor NavyBlue rgb #13458b
.defcolor SeddleBraun rgb #8b4513
circle shaded "cornflowerblue" outline "black"
circle shaded "green" outline "black"
circle shaded "goldenrod" outline "black"
circle shaded "NavyBlue" outline "black"
circle shaded "SeddleBraun" outline "black"
.PE
_EOF__

getkey

groff -mpic gpic_sampler.groff > this.ps;  ps2pdf this.ps ; zathura this.pdf

exit 0

# end.
