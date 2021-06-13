html:
	cat head.adoc > temp.adoc
	./get-ps-now-games.sh | sed 's/^/. /g' >> temp.adoc
	cat tail.adoc >> temp.adoc
	asciidoctor -o - temp.adoc > public/index.html

pup:
	wget https://github.com/ericchiang/pup/releases/download/v0.4.0/pup_v0.4.0_linux_amd64.zip
	unzip pup_v0.4.0_linux_amd64.zip
