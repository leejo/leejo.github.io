#!/bin/bash

echo TAGS
echo ----
perl ~/working/code/web_tools/md_tag_page_generator.pl
echo LINKS
echo -----
PERL_LWP_SSL_VERIFY_HOSTNAME=0 perl ~/working/code/web_tools/find_dead_links.pl -u http://localhost:4000

if [ "$?" == "0" ]; then
	git add -i
	git ci
	git push
else
	echo "SOMETHING WRONG"
fi
