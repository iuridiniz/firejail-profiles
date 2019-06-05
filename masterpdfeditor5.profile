# Firejail profile for default
# This file is overwritten after every install/update
# Persistent local customizations
name master-pdf-editor
include default.local
# Persistent global definitions
include globals.local

# generic gui profile
# depending on your usage, you can enable some of the commands below:

# allow owned config
#whitelist ~/.config/Code Industry
mkdir ~/.config/Code Industry
noblacklist ~/.config/Code Industry

include disable-common.inc
include disable-devel.inc
# include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
#include disable-xdg.inc

caps.drop all
# ipc-namespace
netfilter
# no3d
# nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none

# disable-mnt
# private
# private-bin masterpdfeditor5
# private-cache
private-dev
private-etc machine-id,fonts

# private-lib
private-tmp

#memory-deny-write-execute
noexec ${HOME}
noexec /tmp

# disable network
net none

# enable apparmor
apparmor
