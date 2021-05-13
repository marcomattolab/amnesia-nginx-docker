if [ -d ${HOME}/Amnesia ]; then
  typeset LP_FILE=${HOME}/Amnesia/Amnesia.desktop

  # Remove the target file if any
  rm -f ${LP_FILE}
  printf "%s[Desktop Entry]\nName=Amnesia\nPath=${HOME}/Amnesia\nActions=sudo\nExec=./Amnesia/nw\nIcon=${HOME}/Amnesia/app/icons/128.png\nTerminal=true\nType=Application\nStartupNotify=true > ${HOME}/Amnesia.desktop" >> ${LP_FILE}

  echo 'Your application and launcher are now located at ${HOME}/Amnesia'
  rm README.md
  rm make.sh
  cd ../
  rmdir Amnesia-linsite
  cd ${HOME}/Amnesia/
  chmod 775 nw
fi

if [ ! -d ${HOME}/Amnesia ]; then
  mv Amnesia ${HOME}

  typeset LP_FILE=${HOME}/Amnesia/Amnesia.desktop

  # Remove the target file if any
  rm -f ${LP_FILE}
  printf "%s[Desktop Entry]\nName=Amnesia\nPath=${HOME}/Amnesia\nActions=sudo\nExec=./Amnesia/nw\nIcon=${HOME}/Amnesia/app/icons/128.png\nTerminal=true\nType=Application\nStartupNotify=true > ${HOME}/Amnesia.desktop" >> ${LP_FILE}

  echo 'Your application and launcher are now located at ${HOME}/Amnesia'
  rm README.md
  rm make.sh
  cd ../
  rmdir Amnesia-linsite
  cd ${HOME}/Amnesia/
  chmod 775 nw
fi

# For Windows OS
#if EXIST ${HOME}/Amnesia (
  #echo Yes
#) ELSE (
  #echo No
#)
