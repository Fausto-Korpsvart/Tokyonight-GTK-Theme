#! /usr/bin/env bash

RENDER_SVG="$(command -v rendersvg)" || true
INKSCAPE="$(command -v inkscape)" || true
OPTIPNG="$(command -v optipng)" || true

INDEX_COMMON="assets-common.txt"
INDEX_THEME="assets-theme.txt"

./make-assets.sh

for color in '' '-Dark'; do
    ASSETS_DIR="assets-common${color}"
    SRC_FILE="assets-common${color}.svg"

    # [[ -d $ASSETS_DIR ]] && rm -rf $ASSETS_DIR
    mkdir -p $ASSETS_DIR

    for i in $(cat $INDEX_COMMON); do
        if [[ -f "$ASSETS_DIR/$i.png" ]]; then
            echo "'$ASSETS_DIR/$i.png' exists."
        else
            echo "Rendering '$ASSETS_DIR/$i.png'"
            if [[ -n "${RENDER_SVG}" ]]; then
                "$RENDER_SVG" --export-id "$i" \
                    "$SRC_FILE" "$ASSETS_DIR/$i.png"
            else
                "$INKSCAPE" --export-id="$i" \
                    --export-id-only \
                    --export-filename="$ASSETS_DIR/$i.png" "$SRC_FILE" >/dev/null
            fi
            if [[ -n "${OPTIPNG}" ]]; then
                "$OPTIPNG" -o7 --quiet "$ASSETS_DIR/$i.png"
            fi
        fi
    done
done

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Moon' '-Storm'; do
            ASSETS_DIR="assets${theme}${color}${type}"
            SRC_FILE="assets${theme}${color}${type}.svg"

            # [[ -d $ASSETS_DIR ]] && rm -rf $ASSETS_DIR
            mkdir -p $ASSETS_DIR

            for i in $(cat $INDEX_THEME); do
                if [[ -f "$ASSETS_DIR/$i.png" ]]; then
                    echo "'$ASSETS_DIR/$i.png' exists."
                else
                    echo "Rendering '$ASSETS_DIR/$i.png'"
                    if [[ -n "${RENDER_SVG}" ]]; then
                        "$RENDER_SVG" --export-id "$i" \
                            "$SRC_FILE" "$ASSETS_DIR/$i.png"
                    else
                        "$INKSCAPE" --export-id="$i" \
                            --export-id-only \
                            --export-filename="$ASSETS_DIR/$i.png" "$SRC_FILE" >/dev/null
                    fi
                    if [[ -n "${OPTIPNG}" ]]; then
                        "$OPTIPNG" -o7 --quiet "$ASSETS_DIR/$i.png"
                    fi
                fi
            done
        done
    done
done

for theme in '' '-Blue' '-Green' '-Grey' '-Orange' '-Pink' '-Purple' '-Red' '-Teal' '-Yellow'; do
    for color in '' '-Dark'; do
        for type in '' '-Moon' '-Storm'; do
            if [[ "${theme}" == '' && "${type}" == '' ]]; then
                echo "keep assets${color}.svg file..."
            else
                ASSETS_FILE="assets${theme}${color}${type}.svg"
                rm -rf "${ASSETS_FILE}"
            fi
        done
    done
done

echo -e "DONE!"
