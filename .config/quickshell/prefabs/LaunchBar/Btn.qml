import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Controls

Button {
    id: root
    property string txt
    property real w: 30
    property real h: w
    width: w
    height: h
    x: (parent.width - width) * 0.5
    background: Rectangle {
        width: parent.width
        height: parent.width
        color: parent.pressed ? "#005588" : (parent.hovered ? "#4488ff" : "#2288aa")
        radius: 10
        Text {
            text: root.txt
            color: "#e8a7e4"
            anchors.centerIn: parent
        }
        anchors.centerIn: parent
    }
}

