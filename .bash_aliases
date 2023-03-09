win()
{
    cd /media/madhu/Windows-SSD/Users/manoj/shared_linux
}

cv()
{
    conda activate cv-b
    cd /home/madhu/cmu_courses/CV-B/hw6
}

vlr()
{
    conda activate vlr
    cd /home/madhu/cmu_courses/vlr/visual-learning-recognition-hw1
}
alias air='cd ~/Air_Mobility/Code'
alias python='python3'
alias pip='pip3'
alias pdf='evince'
alias eagle='/home/madhu/tools/eagle-9.6.2/eagle'
alias arduino='/home/madhu/tools/arduino/arduino-ide'
alias processing='sudo /home/madhu/tools/processing-4.1.2/processing'

# for making docker work without sudo 
# newgrp docker
ros1()
{
    # # This is for ros-noetic container 
    # if [ "$( docker container inspect -f '{{.State.Running}}' d7fb1e39283d )" == "false" ]; then 
    #     docker start ros-noetic 
    # fi 
    # # docker exec -it ros-noetic bash
    # docker exec -it --user ros1 ros-noetic bash

    # If the container is not running then stop it 
    if [ "$( docker container inspect -f '{{.State.Running}}' 56f201bc8c0d )" == "false" ]; then 
        docker start ros-noetic-latest 
    fi 
    # docker exec -it ros-noetic bash
    docker exec -it --user ros1 ros-noetic-latest bash
}
alias r='ros1'
rosk()
{
    # If the container is not running then stop it 
    if [ "$( docker container inspect -f '{{.State.Running}}' 63854a8cbd1e )" == "false" ]; then 
        docker start ros-kinetic 
    fi 
    # docker exec -it ros-kinetic bash
    docker exec -it --user rosk ros-kinetic bash
}
export PS1='\[\e]0;\w\a\]\n\[\e[01;32m\]\u@\h \[\e[01;36m\]\w\[\e[0m\]\n\$ '


# For CUDA
export PATH=/usr/local/cuda-12.0/bin${PATH:+:${PATH}}

# For Flutter
export PATH="$PATH:/home/madhu/snap/flutter/common/flutter/bin"

lab()
{
    echo "connecting to mrsd-lab@172.26.33.106"
    sshpass -p i ssh mrsd-lab@172.26.33.106 -XC
}

alias ccat='pygmentize -g -O style=nord-darker'
alias lcat='lolcat'

alias cg='sgpt'
alias cgc='sgpt --chat'
alias cgs='sgpt --shell'
alias cgse='sgpt --shell --execute'
alias cgco='sgpt --code'
alias cgls='sgpt --list-chat'
alias cgcat='sgpt --show-chat'

c()
{
    str="'$*'"
    echo $str
	/home/madhu/tools/miniconda3/bin/ygka "$str"
}
# alias ygka='/home/madhu/tools/miniconda3/bin/ygka'
# cd ~/repos/YGK-a && python3 -m ygka "give me sample code of a rosnode in C++"
qs()
{
    str="'$*'"
    echo $str
    /home/madhu/tools/miniconda3/bin/aishell "$str"
}

# cisco anyconnect vpn
alias vpnui='/opt/cisco/anyconnect/bin/vpnui'
alias vpn='/opt/cisco/anyconnect/bin/vpn'
