if status is-interactive
    zoxide init fish | source

    export LANG='en_US.UTF-8'
    export LC_ALL='en_US.UTF-8'
    export EDITOR='/usr/bin/nvim'

    # general aliases
    alias g='git'
    alias cl='clear'
    alias ls='eza -l --color=always --group-directories-first --icons'    # default
    alias la='eza -a --color=always --group-directories-first --icons'     # all files and dirs
    alias ll='eza -al --color=always --group-directories-first --icons'     # long format
    alias lt='eza -aT --color=always --group-directories-first --icons'    # tree listing
    alias l='eza -lah --color=always --group-directories-first --icons'    # tree listing
    alias browse='xdg-open .'
    alias du='dust'
    alias rg='ripgrep'

    # portable aliases
    alias shred30='shred -fuz -n 30'
    alias server='python3 -m http.server'
    alias ipv4='curl https://ipinfo.io/ip'

    # pentesting
    alias nmap='grc nmap'
    alias vpn='nmcli connection import type openvpn file'
    alias ssh2john='/usr/bin/python3 ~/Resources/ssh2john.py'
    alias pens='/usr/bin/python3 ~/Resources/Pentest_Automation/pentest_setup.py'
    alias ctf='cd ~/Desktop/ctf-writeups'

    # vpns
    alias htb='sudo killall openvpn; sudo openvpn ~/VPNs/HTB/lab_NaomiTesla.ovpn 2>/dev/null &'
    alias thm='sudo killall openvpn; sudo openvpn ~/VPNs/THM/TryHackMe.ovpn 2>/dev/null &'
    alias offsec='sudo killall openvpn; sudo openvpn ~/VPNs/OffSec/OffSec.ovpn 2>/dev/null &'

    # machine specific
    alias notes='/mnt/shared/Notes/'
    alias torrent='npx -p webtorrent-cli webtorrent download'
    alias ytmp4='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"'
    alias vm_mount='sudo vmhgfs-fuse .host:/ /mnt/shared/ -o allow_other -o uid=1000'
    alias tmux='tmux -u'
end


function fish_greeting
    echo '
        🖤
    '
end


function sysupdate
    sudo apt update
    sudo apt full-upgrade -y
    sudo apt autoremove -y
end


# bind-key for clear
function fish_user_key_bindings
    bind \cy 'clear; commandline -f repaint'
end


# auto start tmux
if status is-interactive
    and not set -q TMUX
    exec tmux
end

# add .local bins
fish_add_path -m ~/.local/bin
fish_add_path -m ~/.cargo/bin
