import Quickshell
import QtQuick
import QtQuick.Controls

import "../"
import "../prefabs/LaunchBar/" as LB

PanelWindow {
    id: launch_bar
    visible: true
    color: "transparent"
    implicitWidth: 50
    anchors {
        top: true
        bottom: true
        left: true
    }

    Rectangle {
        color: "#e8a7e4"
        border.width: 4
        border.color: "#ffffff"
        radius: 16
        anchors.margins: 4
        anchors.fill: parent

        Column {
            anchors.fill: parent
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            spacing: 10

            LB.Btn {
                txt: "AI"
                onClicked: {
                    Bus.windows.ai = !Bus.windows.ai
                }
            }

            LB.Btn {
                txt: "Bio"
            }

            LB.Btn {
                txt: "SET"
            }
        }
    }
}

