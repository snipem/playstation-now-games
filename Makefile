html:
	./get-ps-now-games.sh | sed 's/^/. /g' | asciidoctor -o - - > public/index.html

pup:
	wget https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip
	unzip pup_v0.4.0_linux_amd64.zip
