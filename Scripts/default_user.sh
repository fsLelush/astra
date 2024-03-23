cat > /etc/X11/fly-dm/fly-dmrc <<EOF
[General]
ConfigVersion=2.4
ConsoleTTYs=tty1,tty2,tty3,tty4,tty5,tty6
DefaultSession=fly
GreeterUID=fly-dm
OneGUISessionPerUser=false
PidFile=/var/run/fly-dm.pid
ReserveServers=:1,:2,:3,:4,:5
ServerVTs=-7
StaticServers=:0

[Shutdown]
BootManager=None
HaltCmd=/bin/systemctl poweroff
RebootCmd=/bin/systemctl reboot

[X-*-Core]
AllowNullPasswd=false
AllowRootLogin=false
AllowSdForceNow=Root
AllowShutdown=All
AutoReLogin=false
ClientLogFile=.xsession-errors-%d
DefaultSdMode=ForceNow
NoPassEnable=false
NoPassUsers=
Reset=/etc/X11/fly-dm/Xreset
ScheduledSd=Optional
Session=/etc/X11/fly-dm/Xsession
SessionsDirs=/etc/X11/fly-dm/sessions,/usr/share/fly-dm/sessions,/etc/X11/sessions,/usr/share/xsessions,/usr/share/wayland-sessions
Setup=/etc/X11/fly-dm/Xsetup
Startup=/etc/X11/fly-dm/Xstartup

[X-*-Greeter]
AntiAliasing=true
DefaultUser=user
FaceDir=/usr/share/fly-dm/faces
FaceSource=PreferAdmin
FailFont=PT Astra Fact,10,-1,5,75,0,0,0,0,0,Bold
FirstScreen=auto
FocusPasswd=true
ForgingSeed=1709627895
GreetFont=PT Astra Fact,12,-1,5,75,0,0,0,0,0,Bold
GreetString=Добро пожаловать в %n
GreeterFullTimeout=90
GreeterPos=50,50
HiddenUsers=root,adminnkpb
LogoArea=Logo
LogoPixmap=/usr/share/fly-dm/pics/logo.gif
MaxShowUID=29999
MinShowUID=1000
NumLock=Keep
PluginsLogin=modern
PluginsShutdown=classic
PreselectUser=Default
SelectedUsers=
ShowUsers=NotHidden
ShowVkbd=auto
SortUsers=true
StdFont=PT Astra Fact,10,-1,5,50,0,0,0,0,0,Regular
SuspendTimeout=0
Theme=/usr/share/fly-dm/themes/fly-modern
UseTheme=true
UserCompletion=true
UserList=true

[X-:*-Core]
AllowNullPasswd=true
AllowShutdown=All
NoPassEnable=false
NoPassUsers=
ServerArgsLocal=
ServerCmd=/usr/lib/xorg/Xorg -br -novtswitch -quiet -keeptty

[X-:*-Greeter]
AllowClose=true
DefaultUser=user
FocusPasswd=true
LoginMode=DefaultLocal
PreselectUser=Default

[X-:0-Core]
AllowSuspend=All
AutoLoginAgain=false
AutoLoginDelay=0
AutoLoginEnable=false
AutoLoginLocked=false
AutoLoginUser=
ClientLogFile=.xsession-errors

[X-:0-Greeter]
DefaultUser=user
FocusPasswd=true
PreselectUser=Default

[Xdmcp]
Enable=true
EnableAll=false
Willing=/etc/X11/fly-dm/Xwilling

EOF
exit
