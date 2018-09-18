TODO: Make tmux.conf  
TODO: CTF-box 的 ZSH theme 顏色要跟 Host 的不一樣  
TODO: Snippet 的覆蓋腳本


- CTF-Tools 裡面的 ngrok 需要手動下載 Binary
- GitHub 的 SSH key 需要手動新增 (基於安全問題)



CTF-tools.sh 內包含：  
- 工具類
	- gdb
	- make
	- cmake
	- nasm
	- strace
	- nmap
	- pwntools
	- angr
	- ropgadget
	- floss
	- radare2
	- XORtool
	- EzCryptSolver
	- PKCrack
	- HashPump
	- EasyWebSolver
	- SQLmap
	- tplmap
	- commix
	- GitHacker
	- foremost
	- binwalk
	- peda & Pwngdb
- Library 類
	- g++
	- libc6-i386
	- libffi-dev
	- libssl-dev
	- gcc-multilib
	- virtualenvwrapper
	- python-dev
	- build-essential
	- libnum
	- factordb-cli

# Notice
- 在執行 `CTF-tools.sh` 後，需要手動下載 ngrok 的程式到 `~/.Tools/Ngrok` 
