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

    property int theme: 1
    property list<QtObject> themes: [
        // [0]. dark
        QtObject {
            property list<string> outlines: [

            ]
        },
        // [1]. pink
        QtObject {
            property QtObject colors: QtObject {
                property list<string> outlines: [
                    "#ffffff",
                    "#ffc9fa",
                    "#4488ff",
                ]
                property list<string> body: [
                    "#e8a7e4",
                    "#4488ff",
                ]
                property list<string> button: [
                    "#4488ff",
                    "#e8a7e4",
                ]
                property list<string> button_hover: [
                    "#2288aa",
                ]
                property list<string> button_pressed: [
                    "#005588",
                ]
                property list<string> button_text: [
                    "#e8a7e4",
                ]
            }
        }
    ]
}

