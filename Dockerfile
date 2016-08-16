FROM aaronpederson/ubuntu

RUN ansible-galaxy install telusdigital.aws-hostname
COPY playbook.yml /etc/
RUN ansible-playbook /etc/playbook.yml
