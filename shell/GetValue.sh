# ./configFile 格式
# [host_mapping]
# NUM=3
# IP1=192.168.125.171
# HOST1=master-cent7-1
# IP2=192.168.125.172
# HOST2=master-cent7-2
# IP3=192.168.125.173
# HOST3=master-cent7-3

function GetValue(){
  section=$(echo $1 | cut -d '.' -f 1)
  key=$(echo $1 | cut -d '.' -f 2)
  sed -n "/\[$section\]/,/\[.*\]/{
    /^\[.*\]/d
    /^[ \t]*$/d
    /^$/d
    /^#.*$/d
    s/^[ \t]*$key[ \t]*=[ \t]*\(.*\)[ \t]*/\1/p
  }" ./configFile
}

# usage: $(GetValue host_mapping.IP1)

for((i=1;i<=$(GetValue host_mapping.NUM);i++)); do
  sudo echo "$(GetValue "host_mapping.IP$i") $(GetValue "host_mapping.HOST$i")" >> /etc/hosts
  sudo firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='$(GetValue "host_mapping.IP$i")' accept"
done
