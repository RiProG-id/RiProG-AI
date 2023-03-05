function setx() {
[[ ! -x "${0%/*}/$1" ]] && chmod +x "${0%/*}/$1"
}
setx "RiProG"
su -c ${0%/*}/RiProG service