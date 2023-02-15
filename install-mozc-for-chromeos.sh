apt update && apt upgrade -y

apt install task-japanese locales-all fonts-noto-cjk -y

localectl set-locale LANG=ja_JP.UTF-8

source /etc/default/locale

apt install fcitx-mozc -y

sh -c 'cat <<EOF>>/etc/environment.d/fcitx.conf
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
GDK_BACKEND=x11
EOF'

echo '/usr/bin/fcitx-autosta' >> '$HOME/.sommelierrc'
