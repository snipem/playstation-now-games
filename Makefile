html:
	./get-ps-now-games.sh | sed 's/^/. /g' | asciidoctor -o - - > public/index.html
