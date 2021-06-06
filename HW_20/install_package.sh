ansible all -b -m  apt -a "name=$1 update_cache=true"
