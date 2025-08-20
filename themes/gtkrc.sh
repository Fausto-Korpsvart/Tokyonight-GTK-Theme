make_gtkrc() {
    local dest="${1}"
    local name="${2}"
    local theme="${3}"
    local color="${4}"
    local size="${5}"
    local ctype="${6}"
    local window="${7}"

    [[ "${color}" == '-Light' ]] && local ELSE_LIGHT="${color}"
    [[ "${color}" == '-Dark' ]] && local ELSE_DARK="${color}"

    local GTKRC_DIR="${SRC_DIR}/main/gtk-2.0"
    local THEME_DIR="${1}/${2}${3}${4}${5}${6}"

    if [[ "${color}" != '-Dark' ]]; then
        case "$theme" in
            '')
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

        if [[ "$ctype" == '-Moon' ]]; then
            case "$theme" in
                '')
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

        if [[ "$ctype" == '-Storm' ]]; then
            case "$theme" in
                '')
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

        if [[ "$ctype" == '-Moon' ]]; then
            case "$theme" in
                '')
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

        if [[ "$ctype" == '-Storm' ]]; then
            case "$theme" in
                '')
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

    if [[ "$blackness" == 'true' ]]; then
        case "$ctype" in
            '')
                background_light='#e9e9ed'
                background_dark='#15161e'
                background_darker='#111118'
                background_alt='#1f2231'
                titlebar_light='#e9e9ed'
                titlebar_dark='#15161e'
                ;;
            -Moon)
                background_light='#e9e9ed'
                background_dark='#15161e'
                background_darker='#111118'
                background_alt='#1f2231'
                titlebar_light='#e9e9ed'
                titlebar_dark='#15161e'
                ;;
            -Storm)
                background_light='#e9e9ed'
                background_dark='#15161e'
                background_darker='#111118'
                background_alt='#1f2231'
                titlebar_light='#e9e9ed'
                titlebar_dark='#15161e'
                ;;
        esac
    else
        case "$ctype" in
            '')
                background_light='#e9e9ed'
                background_dark='#1a1b26'
                background_darker='#15161e'
                background_alt='#1f2231'
                titlebar_light='#e9e9ed'
                titlebar_dark='#1a1b26'
                ;;
            -Moon)
                background_light='#e9e9ed'
                background_dark='#222436'
                background_darker='#1a1b26'
                background_alt='#1f2231'
                titlebar_light='#e9e9ed'
                titlebar_dark='#222436'
                ;;
            -Storm)
                background_light='#e9e9ed'
                background_dark='#24283b'
                background_darker='#222436'
                background_alt='#1f2231'
                titlebar_light='#e9e9ed'
                titlebar_dark='#24283b'
                ;;
        esac
    fi

    mkdir -p "${THEME_DIR}/gtk-2.0"

    cp -r "${GTKRC_DIR}/gtkrc${ELSE_DARK:-}-default" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#e9e9ed/${background_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#1a1b26/${background_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    sed -i "s/#292e42/${background_alt}/g" "${THEME_DIR}/gtk-2.0/gtkrc"

    if [[ "${color}" == '-Dark' ]]; then
        sed -i "s/#7aa2f7/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#292e42/${background_darker}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#1a1b26/${titlebar_dark}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    else
        sed -i "s/#2e7de9/${theme_color}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
        sed -i "s/#e9e9ed/${titlebar_light}/g" "${THEME_DIR}/gtk-2.0/gtkrc"
    fi
}
