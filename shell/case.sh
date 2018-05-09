case $opt in
  1) echo 1 ;;
  2) echo 2 ;;
  3) echo 3 ;;
  q) echo "Bye"; exit 1 ;;
  *) echo "非法的输入"; continue ;;
esac