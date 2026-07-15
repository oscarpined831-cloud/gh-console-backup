
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/data/data/com.termux/files/home/google-cloud-sdk/path.bash.inc' ]; then . '/data/data/com.termux/files/home/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/data/data/com.termux/files/home/google-cloud-sdk/completion.bash.inc' ]; then . '/data/data/com.termux/files/home/google-cloud-sdk/completion.bash.inc'; fi
export GEMINI_API_KEY="AIzaSyBcPsHoD9tgaIvh0vTZMGS7R_HC_9PHAZU"
export OPERATOR_ID="GAPO960424HDFRNSO1"
alias genesis='cd /data/data/com.termux/files/home/genesis && ls -la'
alias cuchanandy='cd /data/data/com.termux/files/home/genesis/ARCA_G5618/CUCHANANDY'
alias kukulkan='cd /data/data/com.termux/files/home/genesis/ARCA_G5618/KUKULKAN'
alias recuperados='cd /storage/emulated/0/RECUPERADOS_GENESIS'
alias estado='cat /data/data/com.termux/files/home/genesis/identidad/axioma.auth'
alias arrancar='python3 /data/data/com.termux/files/home/genesis/ARCA_G5618/genesis_ignition.py'
alias arca='cd /data/data/com.termux/files/home/.soverania/core && ls -la'
alias árbol='bash /data/data/com.termux/files/home/arbol_completo_termux.sh'
alias auditoria='python3 /data/data/com.termux/files/home/genesis_real_tree.py'
alias arbol='bash /data/data/com.termux/files/home/arbol_completo_termux.sh'
alias control='python3 /data/data/com.termux/files/home/genesis_control_v2.py'
alias árbol='/data/data/com.termux/files/home/genesis_tree.sh'
alias oraculo='python $HOME/oraculo_termux.py'
alias atenea='python3 /data/data/com.termux/files/home/run_papirrin.py'
alias papirrin='python3 /data/data/com.termux/files/home/run_papirrin.py'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# [PANDA] Persistencia Automática de Agente SSH
eval "$(ssh-agent -s)" > /dev/null
ssh-add ~/.ssh/id_ed25519 2> /dev/null

# [PANDA] Atajo de Actualización y Volcado Forense Total
alias actualizar='pkg list-installed > ~/genesis-console/paquetes_instalados.txt && history > ~/genesis-console/historial_termux.txt && cp ~/.bashrc ~/genesis-console/ && cd ~/genesis-console && git add . && git commit -m "update(console): volcado automático de entorno e historial" && git push origin main'
