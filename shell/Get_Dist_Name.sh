# 法一
Get_Dist_Name()
{
    if grep -Eqi "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
        DISTRO='CentOS'
        PM='yum'
    elif grep -Eqi "Red Hat Enterprise Linux Server" /etc/issue || grep -Eq "Red Hat Enterprise Linux Server" /etc/*-release; then
        DISTRO='RHEL'
        PM='yum'
    elif grep -Eqi "Aliyun" /etc/issue || grep -Eq "Aliyun" /etc/*-release; then
        DISTRO='Aliyun'
        PM='yum'
    elif grep -Eqi "Fedora" /etc/issue || grep -Eq "Fedora" /etc/*-release; then
        DISTRO='Fedora'
        PM='yum'
    elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
        DISTRO='Ubuntu'
        PM='apt'
    elif grep -Eqi "Raspbian" /etc/issue || grep -Eq "Raspbian" /etc/*-release; then
        DISTRO='Raspbian'
        PM='apt'
    else
        DISTRO='unknow'
    fi
}

# 法二
source /etc/os-release

# NAME="Ubuntu"
# VERSION="16.04.3 LTS (Xenial Xerus)"
# ID=ubuntu
# ID_LIKE=debian
# PRETTY_NAME="Ubuntu 16.04.3 LTS"
# VERSION_ID="16.04"
# HOME_URL="http://www.ubuntu.com/"
# SUPPORT_URL="http://help.ubuntu.com/"
# BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"
# VERSION_CODENAME=xenial
# UBUNTU_CODENAME=xenial

# PRETTY_NAME="Debian GNU/Linux 9 (stretch)"
# NAME="Debian GNU/Linux"
# VERSION_ID="9"
# VERSION="9 (stretch)"
# ID=debian
# HOME_URL="https://www.debian.org/"
# SUPPORT_URL="https://www.debian.org/support"
# BUG_REPORT_URL="https://bugs.debian.org/"

# NAME="CentOS Linux"
# VERSION="7 (Core)"
# ID="centos"
# ID_LIKE="rhel fedora"
# VERSION_ID="7"
# PRETTY_NAME="CentOS Linux 7 (Core)"
# ANSI_COLOR="0;31"
# CPE_NAME="cpe:/o:centos:centos:7"
# HOME_URL="https://www.centos.org/"
# BUG_REPORT_URL="https://bugs.centos.org/"

# CENTOS_MANTISBT_PROJECT="CentOS-7"
# CENTOS_MANTISBT_PROJECT_VERSION="7"
# REDHAT_SUPPORT_PRODUCT="centos"
# REDHAT_SUPPORT_PRODUCT_VERSION="7"

# NAME=Fedora
# VERSION="27 (Workstation Edition)"
# ID=fedora
# VERSION_ID=27
# PRETTY_NAME="Fedora 27 (Workstation Edition)"
# ANSI_COLOR="0;34"
# CPE_NAME="cpe:/o:fedoraproject:fedora:27"
# HOME_URL="https://fedoraproject.org/"
# SUPPORT_URL="https://fedoraproject.org/wiki/Communicating_and_getting_help"
# BUG_REPORT_URL="https://bugzilla.redhat.com/"
# REDHAT_BUGZILLA_PRODUCT="Fedora"
# REDHAT_BUGZILLA_PRODUCT_VERSION=27
# REDHAT_SUPPORT_PRODUCT="Fedora"
# REDHAT_SUPPORT_PRODUCT_VERSION=27
# PRIVACY_POLICY_URL="https://fedoraproject.org/wiki/Legal:PrivacyPolicy"
# VARIANT="Workstation Edition"
# VARIANT_ID=workstation

case $ID in
debian|ubuntu)
    sudo apt-get install lsb-release
    ;;
centos|fedora|rhel)
    yumdnf="yum"
    if test "$(echo "$VERSION_ID >= 22" | bc)" -ne 0; then
        yumdnf="dnf"
    fi
    sudo $yumdnf install -y redhat-lsb-core
    ;;
*)
    exit 1
    ;;
esac

# $ID
# $VERSION_ID
