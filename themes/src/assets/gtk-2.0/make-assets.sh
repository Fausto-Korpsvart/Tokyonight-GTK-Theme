#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Moon' '-Storm'; do
            if [[ "$color" == '' ]]; then
                case "$theme" in
                    '')
                        theme_color='#006a83'
                        ;;
                    -Blue)
                        theme_color='#2e7de9'
                        ;;
                    -Green)
                        theme_color='#387068'
                        ;;
                    -Grey)
                        theme_color='#414868'
                        ;;
                    -Orange)
                        theme_color='#b15c00'
                        ;;
                    -Pink)
                        theme_color='#d20065'
                        ;;
                    -Purple)
                        theme_color='#7847bd'
                        ;;
                    -Red)
                        theme_color='#f52a65'
                        ;;
                    -Teal)
                        theme_color='#118c74'
                        ;;
                    -Yellow)
                        theme_color='#8c6c3e'
                        ;;
                esac

                if [[ "$type" == '-Moon' ]]; then
                    background_color='#e9e9ed'

                    case "$theme" in
                        '')
                            theme_color='#006a83'
                            ;;
                        -Blue)
                            theme_color='#2e7de9'
                            ;;
                        -Green)
                            theme_color='#587539'
                            ;;
                        -Grey)
                            theme_color='#323449'
                            ;;
                        -Orange)
                            theme_color='#b15c00'
                            ;;
                        -Pink)
                            theme_color='#d20065'
                            ;;
                        -Purple)
                            theme_color='#7847bd'
                            ;;
                        -Red)
                            theme_color='#f52a65'
                            ;;
                        -Teal)
                            theme_color='#118c74'
                            ;;
                        -Yellow)
                            theme_color='#8c6c3e'
                            ;;
                    esac
                fi

                if [[ "$type" == '-Storm' ]]; then
                    background_color='#e9e9ed'

                    case "$theme" in
                        '')
                            theme_color='#006a83'
                            ;;
                        -Blue)
                            theme_color='#2e7de9'
                            ;;
                        -Green)
                            theme_color='#387068'
                            ;;
                        -Grey)
                            theme_color='#323449'
                            ;;
                        -Orange)
                            theme_color='#b15c00'
                            ;;
                        -Pink)
                            theme_color='#d20065'
                            ;;
                        -Purple)
                            theme_color='#7847bd'
                            ;;
                        -Red)
                            theme_color='#f52a65'
                            ;;
                        -Teal)
                            theme_color='#118c74'
                            ;;
                        -Yellow)
                            theme_color='#8c6c3e'
                            ;;
                    esac
                fi
            else
                case "$theme" in
                    '')
                        theme_color='#27a1b9'
                        ;;
                    -Blue)
                        theme_color='#7aa2f7'
                        ;;
                    -Green)
                        theme_color='#73daca'
                        ;;
                    -Grey)
                        theme_color='#c7c7d1'
                        ;;
                    -Orange)
                        theme_color='#ff9e64'
                        ;;
                    -Pink)
                        theme_color='#ff007c'
                        ;;
                    -Purple)
                        theme_color='#bb9af7'
                        ;;
                    -Red)
                        theme_color='#f7768e'
                        ;;
                    -Teal)
                        theme_color='#1abc9c'
                        ;;
                    -Yellow)
                        theme_color='#e0af68'
                        ;;
                esac

                if [[ "$type" == '-Moon' ]]; then
                    background_color='#222436'

                    case "$theme" in
                        '')
                            theme_color='#589ed7'
                            ;;
                        -Blue)
                            theme_color='#82aaff'
                            ;;
                        -Green)
                            theme_color='#c3e88d'
                            ;;
                        -Grey)
                            theme_color='#c7c7d1'
                            ;;
                        -Orange)
                            theme_color='#ff966c'
                            ;;
                        -Pink)
                            theme_color='#ff007c'
                            ;;
                        -Purple)
                            theme_color='#c099ff'
                            ;;
                        -Red)
                            theme_color='#ff757f'
                            ;;
                        -Teal)
                            theme_color='#4fd6be'
                            ;;
                        -Yellow)
                            theme_color='#ffc777'
                            ;;
                    esac
                fi

                if [[ "$type" == '-Storm' ]]; then
                    background_color='#24283b'

                    case "$theme" in
                        '')
                            theme_color='#29a4bd'
                            ;;
                        -Blue)
                            theme_color='#7aa2f7'
                            ;;
                        -Green)
                            theme_color='#9ece6a'
                            ;;
                        -Grey)
                            theme_color='#c7c7d1'
                            ;;
                        -Orange)
                            theme_color='#ff9e64'
                            ;;
                        -Pink)
                            theme_color='#ff007c'
                            ;;
                        -Purple)
                            theme_color='#bb9af7'
                            ;;
                        -Red)
                            theme_color='#f7768e'
                            ;;
                        -Teal)
                            theme_color='#1abc9c'
                            ;;
                        -Yellow)
                            theme_color='#e0af68'
                            ;;
                    esac
                fi
            fi

            if [[ "$type" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}${type}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#006a83/${theme_color}/g" "assets${theme}${color}${type}.svg"
                else
                    sed -i "s/#27a1b9/${theme_color}/g" "assets${theme}${color}${type}.svg"
                fi
            elif [[ "$theme" != '' ]]; then
                cp -r "assets${color}.svg" "assets${theme}${color}.svg"
                if [[ "$color" == '' ]]; then
                    sed -i "s/#006a83/${theme_color}/g" "assets${theme}${color}.svg"
                else
                    sed -i "s/#27a1b9/${theme_color}/g" "assets${theme}${color}.svg"
                fi
            fi

        done
    done
done

echo -e "DONE!"
