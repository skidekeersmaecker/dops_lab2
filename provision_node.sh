apt-get update
apt-get install nodejs

iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000

mkdir /var/www
cd /var/www
if [ ! -d /var/www/dops-lab2-skidekeersmaecker ]; then
	git clone https://github.com/AP-Elektronica-ICT/dops-lab2-skidekeersmaecker.git
fi
cd dops-lab2-skidekeersmaecker
git pull origin master
npm install
runuser -l ubuntu -c '/./vagrant/nonRoot.sh'