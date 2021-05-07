json-pages.txt: profile-pages.txt
	cat $< | sed -e 's/profile.html/profile_ja.json/' >$@

profile-pages.txt: 01.user.jsonl 02.user.jsonl 03.user.jsonl 04.user.jsonl 05.user.jsonl 06.user.jsonl 07.user.jsonl 08.user.jsonl 09.user.jsonl 10.user.jsonl \
	11.user.jsonl 12.user.jsonl 13.user.jsonl 14.user.jsonl 15.user.jsonl 16.user.jsonl 17.user.jsonl 18.user.jsonl 19.user.jsonl 20.user.jsonl \
	21.user.jsonl 22.user.jsonl 23.user.jsonl 24.user.jsonl 25.user.jsonl 26.user.jsonl 27.user.jsonl 28.user.jsonl 29.user.jsonl 30.user.jsonl \
	31.user.jsonl 32.user.jsonl 33.user.jsonl 34.user.jsonl 35.user.jsonl 36.user.jsonl 37.user.jsonl 38.user.jsonl 39.user.jsonl 40.user.jsonl
	cat *.user.jsonl | jq -c '.name'  | grep -E -o 'Profile.+profile.html' | sed -e 's@^@https://yoran.office.ehime-u.ac.jp/@' | sort | uniq > $@

%.syozoku.json:
	curl -XPOST -o $@ -d dept_id=$(*F) -d MAX=200 -d major_id= -d kouza_id= -d PAGE= -d form_name=SYOZOKU -d lang=ja https://yoran.office.ehime-u.ac.jp/scripts/websearch/search.htm

%.user.jsonl:
	-cat $(*F).syozoku.json | jq -c '.user[]' >$@


