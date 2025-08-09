import Quickshell
import QtQuick
import QtQuick.Controls

PanelWindow {
    id: launch_bar
    visible: true
    color: "transparent"
    implicitWidth: 40
    anchors {
        top: true
        bottom: true
        left: true
    }

    Rectangle {
        color: "#000000"
        border.width: 4
        border.color: "#ffffff"
        radius: 12
        anchors.margins: 4

        Column {
            anchors.fill: parent
            spacing: 10

            Button {
                width: 28
                height: width
                background: Rectangle {
                    anchors.centerIn: parent
                    width: parent.width
                    height: width
                    color: "#111111"
                    Text {
                        text: "AI"
                        color: "#ffffff"
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}

