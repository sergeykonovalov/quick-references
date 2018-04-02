echo "=== INSTALLING DOCKER ==="
echo "Updating packages..."
sudo apt-get install

echo "Adding packages to use HTTPS..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

echo "Adding Docker official GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Fingerprint should be 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88..."
sudo apt-key fingerprint 0EBFCD88

echo "Add Docker CE repository..."
# Note that (lsb_release -cs) returns your distributive name, e.g. xenial
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "Updating packages again..."
sudo apt-get update

echo "Eventually installing Docker..."
sudo apt-get install -y docker-ce

# Vagrant-specific: add user to docker group
# sudo usermod -aG docker ubuntu

# Check Docker service is running, first 9 lines of output
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker | head -9

# Optional to check Docker works
echo "Checking if Docker works fine with Hello, world app..."
sudo docker run hello-world

echo "=== DOCKER INSTALLED ==="
