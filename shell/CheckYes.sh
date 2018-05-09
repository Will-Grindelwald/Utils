function CheckYes(){
  condition=-100
  while (( $condition==-100 ))
  do
    echo -n "$1"
    read -t 5 in
    case $in in
    Yes|yes|Y|y|"")
      #do anything you wannt
      condition=1
      ;;
    No|no|N|n)
      #do anything you wannt
      condition=0
      ;;
    *)
      #do anything you wannt as default
      ;;
    esac
  done
  if [ $condition -eq 1 ]; then return 1;
  else return 0;
  fi
}