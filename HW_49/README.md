apt install python3-pip

pip install docker
pip install molecule==2.19.0

molecule init role -r ansible-redis -d docker
	--> Initializing new role ansible-redis...
	Initialized role in /home/course/git/TMS/HW_49/ansible-redis successfully.

cat /home/course/git/TMS/HW_49/ansible-redis/molecule/default/molecule.yml
	---
	dependency:
	  name: galaxy
	driver:
	  name: docker
	lint:
	  name: yamllint
	platforms:
	  - name: instance
	    image: centos:7
	provisioner:
	  name: ansible
	  lint:
	    name: ansible-lint
	scenario:
	  name: default
	verifier:
	  name: testinfra
	  lint:
	    name: flake8

cat /home/course/git/TMS/HW_49/ansible-redis/molecule/default/playbook.yml
	---
	- name: Converge
	  hosts: all
	  roles:
	    - role: ansible-redis

molecule test

molecule --debug test 