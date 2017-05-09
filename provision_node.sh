apt-get update
apt-get install nodejs
apt-get install npm

iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000

mkdir /var/www
cd /var/www
if [ ! -d /var/www/dops_lab2 ]; then
	git clone https://github.com/skidekeersmaecker/dops_lab2.git
fi
cd dops_lab2
git pull origin master
npm install
runuser -l ubuntu -c '/./vagrant/nonRoot.sh'