chx() {
[[ ! -x "${0%/*}/$1" ]] && chmod +x "${0%/*}/$1"
}
chx "RiProG"
su -c ${0%/*}/RiProG debug0 after