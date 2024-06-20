import re
# from pathlib import Path
import os
from os.path import isfile, isdir
import glob
import shutil

# for p in Path( '.' ).rglob( '*' ):
    # print( p )

pattern = re.compile('.*(coma).*')
gestrich = re.compile('.*(gestrich|Gestrich).*')
exceptions = [
        "ana_I.pdf",
        "lina_I.pdf",
        "ana_II.pdf",
        "lina_II.pdf",
        ]
for f in glob.glob('*/**/', recursive = True):
    if isdir(f) and not os.path.exists('../uni-math-public/' + f):
        os.makedirs('../uni-math-public/' + f)

for f in glob.glob('*', recursive = True):
    if f.endswith('.pdf') or f.endswith('.xopp'):
        for filename in exceptions:
            if f.endswith(filename) or gestrich.match(f):
                # print(f)
                try:
                    shutil.copy2(f, '../uni-math-public/' + f)
                except:
                    print("error", f)
    elif not pattern.match(f) and isfile(f):
        shutil.copy2(f, '../uni-math-public/' + f)

for f in glob.glob('*/**/*', recursive = True):
    if f.endswith('.pdf') or f.endswith('.xopp'):
        for filename in exceptions:
            if f.endswith(filename) or gestrich.match(f):
                # print(f)
                try:
                    shutil.copy2(f, '../uni-math-public/' + f)
                except:
                    print("error", f)
    elif not pattern.match(f) and isfile(f):
        shutil.copy2(f, '../uni-math-public/' + f)
