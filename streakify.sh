#!/usr/bin/env bash

STREAKFILE='.streak'
TEXTFILE='.owtext'

echo 'Keep that streak going... artificially'

echo `The time is date -Iseconds` >> $STREAKFILE
curl http://loripsum.net/api/10/short/headers >> $TEXTFILE
git commit -a -m "update streak for `date -I`"
git push

echo 'Congratulations, you just kept your streak going'
echo 'Thanks for using github-streak by @jontsai <hello@jontsai.com>'
