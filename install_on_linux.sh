cat << EOF >> ~/.bashrc

### IS-MA: GITZ ###
source ~/.is-ma/gitz/shortcuts.sh
EOF

# silent source
source ~/.bashrc > /dev/null 2>&1
