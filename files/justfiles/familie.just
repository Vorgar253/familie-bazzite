# Entfernt Bazzite-Standardprogramme, die in der Familie nicht gebraucht werden
familie-aufraeumen:
    #!/usr/bin/env bash
    for app in org.mozilla.firefox org.gnome.Contacts org.gnome.Papers org.gnome.Weather; do
        if flatpak info --system "$app" >/dev/null 2>&1; then
            echo "Entferne $app ..."
            flatpak uninstall --system -y "$app"
        else
            echo "$app ist nicht installiert, übersprungen."
        fi
    done
