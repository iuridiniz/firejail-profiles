# Firejail profile for snap
# Description: Location of genes from DNA sequence with hidden markov model
# This file is overwritten after every install/update
# Persistent local customizations
include snap.local
# Persistent global definitions
include globals.local

# Generic Ubuntu snap application profile
noblacklist ${HOME}/snap

include disable-common.inc
include disable-passwdmgr.inc
include disable-programs.inc

whitelist ${DOWNLOADS}
whitelist ${HOME}/snap
include whitelist-common.inc
