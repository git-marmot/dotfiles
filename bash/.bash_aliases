alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias mnt-win='sudo mount /dev/nvme0n1p3 /mnt/win10'
alias umnt-win='sudo umount /mnt/win10'
alias mnt-prv='ecryptfs-mount-private'
alias umnt-prv='ecryptfs-umount-private'

alias clearswap='sudo swapoff -a && sudo swapon -a'
alias timestamp='date +%Y-%m-%dT%H-%M-%S'
alias reload='source ~/.bashrc'
alias shutdown='shutdown -h now'

scan_local() {
	local_ip=$(ip addr show wlan0 | grep "inet " | awk '{print $2}' | awk -F '/' '{print $1}')
	sudo nmap -sL "$local_ip/24" | grep \(1
}

scan_file_size() {
	du -h -x -s -- * | sort -r -h | head -20;
}

sys_info() {
	printf "\n"
	printf "   %s\n" "IP ADDR: $(curl ifconfig.me)"
	printf "   %s\n" "USER: $(echo $USER)"
	printf "   %s\n" "DATE: $(date)"
	printf "   %s\n" "UPTIME: $(uptime -p)"
	printf "   %s\n" "KERNEL: $(uname -rms)"

	printf "   %s\n" "MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')"
	printf "\n"
}
