#!/bin/bash
# @param $1 enable|disable
# @param $2 extension name
# @param $3 repository path [optional]
action_type="$1"
extension_name="$2"
extension_repository_path="$3"
extension_folder="$HOME/.local/share/gnome-shell/extensions/$extension_repository_path/"
echo "Install GNOME extension \"$extension_name\"..."
if [ "$action_type" == "enable" ];
    then 
        if [ -z "$extension_repository_path" ];
            then
                if [ -d "$extension_folder" ];
                    then
                        if [ -d "$extension_folder"".git" ];
                            then
                                echo "Pulling changes from git..." &&
                                (cd "$extension_folder" && git pull) || exit 1
                        else
                            echo "No git repository. Extension will not be updated."
                        fi
                    else
                        echo "Install..." &&
                        git clone "$extension_repository_path" "$extension_folder" || exit 1
                fi
                if [ -f "$extension_folder""Makefile" ];
                    then

                        tmp_extension_folder="/tmp/$extension_repository_path"
                        mv "$extension_folder" "$tmp_extension_folder"
                        echo "Compilling extension.."
                        (cd "$tmp_extension_folder" && make install) || exit 1 "Compilation with failed."

                        echo "Cleaning up tmp-extension folder..."&&
                        rm -fr "$tmp_extension_folder" || exit 1

                    else
                        echo "No Makefile found. Skipping compilation..."
                fi
        fi
        echo "enable GNOME extension \"$extension_name\"..." &&
        gnome-extensions enable "$extension_name" || exit 1
fi
if [ "$action_type" == "disable" ];
    then 
        echo "disable GNOME extension \"$extension_name\"..." &&
        gnome-extensions disable "$extension_name" || exit 1
fi
