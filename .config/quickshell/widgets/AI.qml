import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import QtQuick
import QtQuick.Controls

PanelWindow {
    id: ai_window
    implicitWidth: 500
    color: "transparent"
    aboveWindows: true
    anchors {
        left: true
        top: true
        bottom: true
    }

    WlrLayershell.namespace: "Window_AI"
    WlrLayershell.layer: WlrLayer.Top
    WlrLayershell.exclusiveZone: 0

    Rectangle {
        anchors.fill: parent
        anchors.margins: 40
        anchors.topMargin: 150
        anchors.bottomMargin: anchors.topMargin
        radius: 14
        color: "#000000"
        border.color: "#ffc9fa"
        border.width: 3

        Button {
            width: 25
            height: width
            id: close_btn
            y: parent.border.width + 4
            x: parent.width - (parent.border.width + width + 4)
            background: Rectangle {
                width: parent.width
                height: width
                color: !close_btn.hovered ? "#d5b3f7" : (!close_btn.pressed ? "#fcb3f7" : "#ffc9fa")
                border.color: "#fcb3f7"
                border.width: 4
                radius: 10
                Text {
                    text: "X"
                    color: "#ff0000"
                    anchors.centerIn: parent
                }
            }

            onClicked: {
                ai_window.visible = false;
            }
        }
    }
}


