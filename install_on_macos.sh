cat << EOF >> ~/.bash_profile

### IS-MA: GITZ ###
source ~/.is-ma/gitz/shortcuts.sh
EOF

# silent source
source ~/.bash_profile > /dev/null 2>&1
