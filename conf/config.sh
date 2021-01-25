# podman & skopeo
sudo yum -y install podman
sudo curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable.repo https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/CentOS_7/devel:kubic:libcontainers:stable.repo
sudo yum -y install skopeoudo yum install -y skopeo

# install s2i
mkdir /tmp/s2i/ && cd /tmp/s2i/ 
curl -s https://api.github.com/repos/openshift/source-to-image/releases/latest \
  | grep browser_download_url \
  | grep linux-amd64 \
  | cut -d '"' -f 4 \
  | wget -qi -

tar xvf source-to-image*.gz
./
./s2i
./sti
  
sudo mv s2i /usr/local/bin
rm -rf /tmp/s2i/

# utils
sudo yum -y install tree

