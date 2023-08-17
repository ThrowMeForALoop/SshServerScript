apt update && apt install -y --no-install-recommends openssh-server && mkdir -p /run/sshd && echo root:test | chpasswd
printf "Port 22\nPermitRootLogin yes" >> /etc/ssh/sshd_config
service ssh start