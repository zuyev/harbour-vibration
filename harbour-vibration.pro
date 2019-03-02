# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-vibration

CONFIG += sailfishapp

SOURCES += src/harbour-vibration.cpp

DISTFILES += qml/harbour-vibration.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/harbour-vibration.changes.in \
    rpm/harbour-vibration.changes.run.in \
    rpm/harbour-vibration.spec \
    rpm/harbour-vibration.yaml \
    translations/*.ts \
    harbour-vibration.desktop \
    qml/pages/FullPage.qml \
    qml/pages/Help.qml \
    qml/pages/Help_Theme_effects.qml \
    qml/pages/Help_Custom_effects.qml \
    translations/harbour-vibration-fr.ts \
    translations/harbour-vibration-ru.ts

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/harbour-vibration-de.ts
TRANSLATIONS += translations/harbour-vibration-ru.ts
TRANSLATIONS += translations/harbour-vibration-fr.ts

