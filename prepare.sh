  #!/bin/bash 

  echo "Update your repository"
  sudo apt-get update

  echo "Install Python Software Properties"
  sudo apt-get install python-software-properties -y

  echo "Jpeg Support for PIL"
  sudo apt-get install libjpeg-dev -y

  echo "Install libmysqlclient dev"
  sudo apt-get install libmysqlclient-dev -y
