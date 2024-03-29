#!/bin/bash

#creation d'utilisateur
#si il y a des arguments alors on continue sinon afficher le probleme
#si utilisateur existant afficher le probleme
#sinon si creation du compte se passe bien alors afficher succes
#sinon afficher probleme
#fin

if [ $# -eq 0 ]
    then
        echo "ajout d'argument"
        exit 1
        else
            for user in $@
            do
                if cat /etc/passwd | grep "$user" &>/dev/null
                    then
                        echo "utilisater $user existe"
                    else
                        if sudo useradd "$user"
                            then
                            echo "utilisateur $user a été cree"
                        else
                            echo "echec a la creation du $user"
                        fi
                fi
            done
fi
