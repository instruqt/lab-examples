ssh-keygen -t "${type}" -f "${file}" -C "${comment}" -N ""

chmod 0600 /root/.ssh/*
