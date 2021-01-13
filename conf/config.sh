# podman & skopeo
sudo yum install -y podman
sudo yum install -y skopeo

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
sudo yum install -y tree

