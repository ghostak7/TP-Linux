#!/bin/bash
#
# Creation d'une base de donees MySQL + utilisateur
#
# @author : V. Liefooghe
# @version : 1.0.0
# 
# v 1.0.0 : 14/02/2012
#
#---------------------------------------------------------

echo -n "Nom de la base : "
read DBNAME

if [ "$DBNAME" != "" ] ; then
  echo "Creation de la base $DBNAME"

  echo -n "Nom de l'utilisateur [$DBNAME]: "
  read DBUSER
  if [ "$DBUSER"  = "" ] ; then
	DBUSER=$DBNAME
  fi
  echo "Utilisateur : $DBUSER"
  echo -n "Mot de passe [$DBNAME.pwd%]: "
  read DBPASS
  if [ "$DBPASS"  = "" ] ; then
	DBPASS="$DBNAME.pwd%"
  fi
  echo "Mot de passe :  $DBPASS"
  echo "-----------------------------"
  echo "Creation de la base : $DBNAME"
  echo "Creation de l'utilisateur : $DBUSER"
  echo "avec le mot de passe : $DBPASS"
  echo -n "Confirmez-vous cette action ? [o/N] "
  read CONFIRM
  if [ "$CONFIRM" = "o" -o "$CONFIRM" = "O" ] ; then
    echo "create database $DBNAME ; " > /tmp/$$.tmp.sql
    echo "grant all on $DBNAME.* to $DBUSER@'localhost' identified by '$DBPASS' ; " >> /tmp/$$.tmp.sql
    echo "exit " >> /tmp/$$.tmp.sql
    echo " "
    echo "Connexion MySQL ..."
    echo " "
    mysql -u root -p < /tmp/$$.tmp.sql
    if [ $? := "0" ] ; then
      echo "Probleme de connexion MySQL"
    fi 
    rm /tmp/$$.tmp.sql
  fi 
fi
