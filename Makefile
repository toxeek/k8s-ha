# Create kubernetes cluster
cluster: clear-ssh
	cd ansible && ansible-playbook -i hosts -u tricky --key-file "/home/tricky/.ssh/id_rsa" main.yaml --extra-vars "@vars.yaml"

# Reset remembering ssh keys
clear-ssh:
	ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.39 && \
	ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.40 && \
	ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.42 && \
	ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.43 && \
	ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.44 && \
	ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.45 && \
	ssh-keygen -f ~/.ssh/known_hosts -R 192.168.1.47


