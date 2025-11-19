[Setup]
AppName=EmailPhoneApp
AppVersion=1.0.0
DefaultDirName={pf}\EmailPhoneApp
DefaultGroupName=EmailPhoneApp
OutputBaseFilename=EmailPhoneAppInstaller_1.0.0
Compression=lzma
SolidCompression=yes

[Files]
Source: "dist\app.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "icon.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "local_site\*"; DestDir: "{app}\local_site"; Flags: recursesubdirs createallsubdirs ignoreversion

[Icons]
Name: "{group}\EmailPhoneApp"; Filename: "{app}\app.exe"; WorkingDir: "{app}"; IconFilename: "{app}\icon.ico"

[Run]
Filename: "{app}\app.exe"; Flags: nowait postinstall skipifsilent
