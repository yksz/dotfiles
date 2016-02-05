PROXY_HOST="proxy.example.com"
PROXY_PORT="8080"
PROXY_USER="user"
PROXY_PASSWD="passwd"

PROXY="${PROXY_USER}:${PROXY_PASSWD}@${PROXY_HOST}:${PROXY_PORT}"

export http_proxy="http://${PROXY}/"
export https_proxy="https://${PROXY}/"
export ftp_proxy="ftp://${PROXY}/"
export no_proxy="127.0.0.1,localhost"

export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$https_proxy
export FTP_PROXY=$ftp_proxy
export NO_PROXY=$no_proxy
