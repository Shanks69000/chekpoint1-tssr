#!/bin/bash
#script pour creer des utilisateurs :


if [ $# -eq 0 ]
    then
#Si la liste des arguments est vide alors message erreur
        echo "Il y a aucun argument, veuillez ajouter des arguments !"
        exit 1
    else
#chercher dans la liste d arguments si l utilisateur existe si non alors on le créer
        for user in $@
        do
            if cat /etc/passwd | grep "$user" &>/dev/null
                then
                    echo "L'utilisateur $user existe déjà !"
                else
                    useradd $user
                    echo "L'utilisateur $user a bien été créé."
                fi
        done
fi


