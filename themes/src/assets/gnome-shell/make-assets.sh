#! /usr/bin/env bash

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for type in '' '-Moon' '-Storm'; do
        case "$theme" in
            '')
                theme_color_dark='#27a1b9'
                theme_color_light='#006a83'
                ;;
            -Blue)
                theme_color_dark='#7aa2f7'
                theme_color_light='#2e7de9'
                ;;
            -Green)
                theme_color_dark='#9ece6a'
                theme_color_light='#587539'
                ;;
            -Grey)
                theme_color_dark='#c7c7d1'
                theme_color_light='#414868'
                ;;
            -Orange)
                theme_color_dark='#ff9e64'
                theme_color_light='#b15c00'
                ;;
            -Pink)
                theme_color_dark='#ff007c'
                theme_color_light='#d20065'
                ;;
            -Purple)
                theme_color_dark='#9d7cd8'
                theme_color_light='#7847bd'
                ;;
            -Red)
                theme_color_dark='#f7768e'
                theme_color_light='#f52a65'
                ;;
            -Teal)
                theme_color_dark='#118c74'
                theme_color_light='#1abc9c'
                ;;
            -Yellow)
                theme_color_dark='#e0af68'
                theme_color_light='#8c6c3e'
                ;;
        esac

        if [[ "$type" == '-Moon' ]]; then
            case "$theme" in
                '')
                    theme_color_dark='#589ed7'
                    theme_color_light='#006a83'
                    ;;
                -Blue)
                    theme_color_dark='#82aaff'
                    theme_color_light='#2e7de9'
                    ;;
                -Green)
                    theme_color_dark='#c3e88d'
                    theme_color_light='#587539'
                    ;;
                -Grey)
                    theme_color_dark='#c7c7d1'
                    theme_color_light='#414868'
                    ;;
                -Orange)
                    theme_color_dark='#ff966c'
                    theme_color_light='#b15c00'
                    ;;
                -Pink)
                    theme_color_dark='#ff007c'
                    theme_color_light='#d20065'
                    ;;
                -Purple)
                    theme_color_dark='#c099ff'
                    theme_color_light='#7847bd'
                    ;;
                -Red)
                    theme_color_dark='#ff757f'
                    theme_color_light='#f52a65'
                    ;;
                -Teal)
                    theme_color_dark='#4fd6be'
                    theme_color_light='#118c74'
                    ;;
                -Yellow)
                    theme_color_dark='#ffc777'
                    theme_color_light='#8c6c3e'
                    ;;
            esac
        fi

        if [[ "$type" == '-Storm' ]]; then
            case "$theme" in
                '')
                    theme_color_dark='#29a4bd'
                    theme_color_light='#006a83'
                    ;;
                -Blue)
                    theme_color_dark='#7aa2f7'
                    theme_color_light='#2e7de9'
                    ;;
                -Green)
                    theme_color_dark='#9ece6a'
                    theme_color_light='#387068'
                    ;;
                -Grey)
                    theme_color_dark='#c7c7d1'
                    theme_color_light='#414868'
                    ;;
                -Orange)
                    theme_color_dark='#ff9e64'
                    theme_color_light='#b15c00'
                    ;;
                -Pink)
                    theme_color_dark='#ff007c'
                    theme_color_light='#d20065'
                    ;;
                -Purple)
                    theme_color_dark='#9d7cd8'
                    theme_color_light='#7847bd'
                    ;;
                -Red)
                    theme_color_dark='#f7768e'
                    theme_color_light='#f52a65'
                    ;;
                -Teal)
                    theme_color_dark='#1abc9c'
                    theme_color_light='#118c74'
                    ;;
                -Yellow)
                    theme_color_dark='#e0af68'
                    theme_color_light='#8c6c3e'
                    ;;
            esac
        fi

        if [[ "$type" != '' ]]; then
            rm -rf "theme${theme}${type}"
            cp -rf "theme" "theme${theme}${type}"
            sed -i "s/#27a1b9/${theme_color_dark}/g" "theme${theme}${type}"/*.svg
            sed -i "s/#006a83/${theme_color_light}/g" "theme${theme}${type}"/*.svg
        elif [[ "$theme" != '' ]]; then
            rm -rf "theme${theme}"
            cp -rf "theme" "theme${theme}"
            sed -i "s/#27a1b9/${theme_color_dark}/g" "theme${theme}"/*.svg
            sed -i "s/#006a83/${theme_color_light}/g" "theme${theme}"/*.svg
        fi
    done
done

echo -e "DONE!"
