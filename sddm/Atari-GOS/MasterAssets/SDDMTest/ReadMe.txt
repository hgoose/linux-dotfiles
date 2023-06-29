sddmtest
version 1.0

Introduction:

I got tired of typing sddm-greeter --test-mode --theme $PATH $THEME_NAME everything I wanted to test out a beta theme or an installed theme, so I wrote sddmtest.


Example:

I am working on my new theme: MyNewExampleTheme
It is located in /home/mark/Desktop/Themes/MyNewExampleTheme/
I am in /home/mark/Desktop/Themes/MyNewExampleTheme/

To test my theme I can type: sddmtest . MyNewExampleTheme

If I wanted to test an installed theme I can type: sddmtest default MyOldExampleTheme

default = /usr/share/sddm/themes/


Installation:

1. Copy sddmtest to your home directory
2. In your home directory type: chmod +x sddmtest
3. In /usr/local/bin type: sudo ln -s /home/your_name/sddmtest sddmtest

Now you can call sddmtest from anywhere.



Source Code Listing:

#!/bin/bash
#sddmtest
#version 1.0
#Mark Hart

clear

loc=/home
thme=test

if [ "$2" == '' ]; then
  echo "Usage: sddmtest THEME_DIR THEME_NAME"
  echo "Use:   sddmtest default C64 (to test C64 in /usr/share/sddm/themes/)"
  echo "Use:   sddmtest . C64 (to test C64 in current dir)"
  echo "Use:   sddmtest /where/theme/is/located/ C64 (to test C64)"
  exit
fi


if [ "$1" == 'default' ] || [ "$1" == '.' ]; then

   if [ "$1" == 'default' ]; then

     loc=/usr/share/sddm/themes/

     if [ -d "$loc$2" ]; then
        sddm-greeter --test-mode --theme $loc$2
        exit
     else
        echo "ERROR: can't find theme $loc$2"
        exit
     fi

   fi


   if [ "$1" == '.' ]; then

     loc=$(pwd)"/"

     if [ -d "$loc" ]; then
        sddm-greeter --test-mode --theme "$loc"
        exit
     else
        echo "ERROR: can't find theme $loc"
        exit
     fi
   fi

else

  loc=$1

fi


if [ -d "$loc" ]; then
  sddm-greeter --test-mode --theme $loc $2
else
  echo "ERROR: can't find theme $loc$2"
fi


