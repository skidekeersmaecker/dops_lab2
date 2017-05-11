apt-get update
apt-get install -y npm
apt-get install -y nodejs
apt-get install -y build-essential

iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
iptables -t nat -A PREROUTING -p tcp --d 127.0.0.1 -j REDIRECT --to-port 3000


mkdir /var/www
cd /var/www
if [ ! -d /var/www/dops_lab2 ]; then
	git clone https://github.com/skidekeersmaecker/dops_lab2.git
fi
cd dops_lab2
git pull origin master

npm init
npm install express --save
npm install body-parser --save
npm install

runuser -l ubuntu -c '/./vagrant/nonRoot.sh'