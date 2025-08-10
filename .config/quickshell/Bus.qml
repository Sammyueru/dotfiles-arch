pragma Singleton
import Quickshell
import QtQuick

QtObject {
    id: bus

    property QtObject windows: QtObject {
        property bool ai: false
    }
}

