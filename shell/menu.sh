while :
do
  clear
  echo
  echo "***************************************************"
  echo " 自动配置系统  $version - by LJC "
  echo "***************************************************"
  echo "> 主菜单"
  echo
  echo "  1 - xxx"
  echo "  2 - xxx"
  echo "  3 - xxx"
  echo "  4 - xxx"
  echo "  q - 退出"
  echo
  echo -n "请选择:"
  read opt
  case $opt in
    1) echo 1 ;;
    2) echo 2 ;;
    3) echo 3 ;;
    4) echo 4 ;;
    q) echo "Bye"; exit 1 ;;
    *) echo "非法的输入"; continue ;;
  esac
  echo "Press any key to continue"
  read -n1 anyKey
done
