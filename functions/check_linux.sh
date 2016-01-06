#---------------------------------------------------------------------
# Function: CheckLinux
#    Check Installed Linux Version
#---------------------------------------------------------------------

CheckLinux() {

  #Extract information on system
  . /etc/os-release

  # Set DISTRO variable to null
  DISTRO=''

  #---------------------------------------------------------------------
  #    Debian 7 Wheezy
  #---------------------------------------------------------------------

  if echo $ID-$VERSION_ID | grep -iq "debian-7"; then
	DISTRO=debian7
  fi


  #---------------------------------------------------------------------
  #    Debian 8 Jessie
  #---------------------------------------------------------------------

  if echo $ID-$VERSION_ID | grep -iq "debian-8"; then
		DISTRO=debian8
  fi

  #---------------------------------------------------------------------
  #    Ubuntu 14.04
  #---------------------------------------------------------------------

  if echo $ID-$VERSION_ID | grep -iq "ubuntu-15.04"; then
		DISTRO=ubuntu15.04
  fi

  #---------------------------------------------------------------------
  #    CentOS
  #---------------------------------------------------------------------

  if echo $ID-$VERSION_ID | grep -iq "centos-7"; then
		DISTRO=centos7
  fi

}

