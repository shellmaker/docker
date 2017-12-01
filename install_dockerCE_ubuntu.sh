apt remove docker docker-engine docker.io
apt update

apt install linux-image-extra-$(uname -r) linux-image-extra-virtual
apt update

apt install apt-transport-https ca-certificates curl software-properties-common
apt update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) edge"

apt update
 
apt install docker-ce
 
docker run hello-word
