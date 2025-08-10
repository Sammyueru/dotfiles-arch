pragma Singleton
import Quickshell
import QtQuick

QtObject {
    id: bus

    property QtObject windows: QtObject {
        property bool ai: false
    }
    
    property QtObject launch_bar: QtObject {
        property QtObject buttons: QtObject {
            property bool ai: true
            property bool bio: true
        }
    }
}

