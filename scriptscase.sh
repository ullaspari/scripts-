#!/bin/bash

echo "below is the menu"
echo -e "1)searchword\n2)checkName\n3)create softlink\n4)edit a file\n5)find a file\n6)rename file\n7)exit\n"
echo "enter option you want from above menu"
read opt

case $opt in

          1) echo "enter word to search"
             read word
             grep -l "$word" * > list
             if [ $? -eq 0 ]; then
             echo "$word is found in below files"
             cat list
             else
             echo "$word is not found"
                         exit
             fi
             rm list
             ;;
           2) echo "enter file name: "
                                read name

                                if [ -f $name ]; then
                                echo "$name file exists"

                                else
                                echo "$name file doesnot exists"

                                        fi
               ;;
                        3) echo "enter file "
                 read file
                 if [ ! -f $file ]; then
                   echo "$file does not exist"
                    exit
                 fi
                  echo "enter link name"
                 read link
                 if [ -L $link ];then
                  echo "$link already exists"
                  exit
                  fi
                                  ln -s $file $link
                     ;;

             4) echo "enter file name"
                 read file
                 if [ -f $file ]; then
                  vi $file
                                  else
                                  echo "$file doesnot exists"
                                  exit
                                  fi
                 ;;
                        5) echo "enter file name"
                 read file
                 find . -iname "$file" > path
                 if [ $? -eq 0 ]; then
                 echo "$file is found:"
                  cat path
                   else
                 echo "$file is not found"
                 fi
                 rm path
                 ;;
                        6) echo "enter filename "
                 read file
                 if [ -f $file ]; then
                 echo "enter new name to rename"
                 read rename
                 mv $file $rename
                                  else
                                  echo "$file doesnot exists"
                                  exit
                                  fi
                 ;;
                        7) echo "selected to exit"
                  exit
                  ;;
                 *) echo "invalid option"
                          exit
                    ;;
              esac
