# -*- mode: python -*-
a = Analysis(['/home/hello/workspace/project/docker-light-baseimage/src/py_tool/setuser.py'],
             pathex=['/usr/local/lib/python2.7/dist-packages/', '/home/hello/workspace/project/docker-light-baseimage/src/py_tool'],
             hiddenimports=[],
             hookspath=None,
             runtime_hooks=None)
pyz = PYZ(a.pure)
exe = EXE(pyz,
          a.scripts,
          exclude_binaries=True,
          name='setuser',
          debug=False,
          strip=None,
          upx=True,
          console=True )
coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas,
               strip=None,
               upx=True,
               name='setuser')
