if [[ $EUID -ne 0  ]]; then
    SUDO=sudo
fi

# Quick jump to Python package directory
pycd(){ cd $(dirname $(python -c "print __import__('$1').__file__")); }

# Simplify ntpdate command
ntpupdate(){ $SUDO ntpdate cn.pool.ntp.org; }
#ntpupdate(){ $SUDO ntpdate jp.pool.ntp.org; }

i(){ curl ip.cn/$i; }
