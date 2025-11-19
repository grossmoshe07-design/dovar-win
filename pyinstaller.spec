# -*- mode: python ; coding: utf-8 -*-
block_cipher = None
a = Analysis(
    ['app.py'],
    pathex=[],
    binaries=[],
    datas=[('splash.png', '.'), ('icon.ico', '.'), ('local_site', 'local_site')],
    hiddenimports=[],
    hookspath=[],
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
)
pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)
exe = EXE(
    pyz, a.scripts, a.binaries, a.zipfiles, a.datas, [],
    name='EmailPhoneApp', debug=False, bootloader_ignore_signals=False,
    strip=False, upx=False, console=False, icon='icon.ico'
)