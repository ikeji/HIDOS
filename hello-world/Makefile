hello.exe: hello.c
	# docker run --rm -v `pwd`:/tmp lapinlabs/watcom bwcl -bt=dos -mt -fe=/tmp/hello.exe /tmp/hello.c
	docker run --rm -v `pwd`:/tmp arlaneenalra/watcom-docker wcl -bt=dos -mt -fe=/tmp/hello.exe /tmp/hello.c


init:
	wget https://github.com/Baron-von-Riedesel/JWasm/releases/download/v2.20/JWasm_v220_dos.zip
	unzip JWasm_v220_dos.zip
