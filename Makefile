all: 01.syozoku.json 02.syozoku.json 03.syozoku.json 04.syozoku.json 05.syozoku.json 06.syozoku.json 07.syozoku.json 08.syozoku.json 09.syozoku.json 10.syozoku.json \
	11.syozoku.json 12.syozoku.json 13.syozoku.json 14.syozoku.json 15.syozoku.json 16.syozoku.json 17.syozoku.json 18.syozoku.json 19.syozoku.json 20.syozoku.json \
	21.syozoku.json 22.syozoku.json 23.syozoku.json 24.syozoku.json 25.syozoku.json 26.syozoku.json 27.syozoku.json 28.syozoku.json 29.syozoku.json 30.syozoku.json \
	31.syozoku.json 32.syozoku.json 33.syozoku.json 34.syozoku.json 35.syozoku.json 36.syozoku.json 37.syozoku.json 38.syozoku.json 39.syozoku.json 40.syozoku.json


%.syozoku.json:
	curl -XPOST -o $@ -d dept_id=$(*F) -d MAX=200 -d major_id= -d kouza_id= -d PAGE= -d form_name=SYOZOKU -d lang=ja https://yoran.office.ehime-u.ac.jp/scripts/websearch/search.htm

