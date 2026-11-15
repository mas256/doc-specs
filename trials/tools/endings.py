import re,sys,collections,pathlib
pats=[("です・ます",r"(です|ます|でした|ました|ません|しょう)$"),("である",r"である$"),("だ",r"[^ん]だ$|のだ$"),
("となる",r"となる$"),("になる",r"になる$"),("しよう・てみよう",r"(よう|みよう)$"),("だろう",r"だろう$"),("か(問い)",r"か$"),
("できる",r"できる$"),("ない",r"ない$")]
tot=collections.Counter(); per=collections.defaultdict(collections.Counter); ex=collections.defaultdict(list)
for d in sorted(pathlib.Path('.').glob('第[1-4]章*')):
  for f in d.rglob('*.tex'):
    t=f.read_text(encoding='utf-8')
    t=re.sub(r'%.*','',t); t=re.sub(r'\\begin\{(align\*?|tikzpicture|tabular|center)\}.*?\\end\{\1\}','',t,flags=re.S)
    t=re.sub(r'\\\[.*?\\\]','',t,flags=re.S); t=re.sub(r'\$[^$]*\$','X',t)
    for sent in re.split(r'[.。]\s*',t):
      s=re.sub(r'\\[a-zA-Z]+\*?(\{[^}]*\})?|[{}\s]','',sent)
      if len(s)<4: continue
      for name,p in pats:
        if re.search(p,s):
          tot[name]+=1; per[d.name.split()[0]][name]+=1
          if name=="です・ます": ex[name].append((str(f),s[-30:]))
          break
print(dict(tot))
for k,v in per.items(): print(k,dict(v))
for f,s in ex["です・ます"][:8]: print("  ",f.split('/')[-1],"…",s)
