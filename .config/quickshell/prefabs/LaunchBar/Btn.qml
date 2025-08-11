import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Controls

import "../../"

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
        color: parent.pressed ? Bus.themes[Bus.theme].colors.button_pressed[0] : (parent.hovered ? Bus.themes[Bus.theme].colors.button_hover[0] : Bus.themes[Bus.theme].colors.button[0])
        radius: 10
        Text {
            text: root.txt
            color: Bus.themes[Bus.theme].colors.button_text[0]
            anchors.centerIn: parent
        }
        anchors.centerIn: parent
    }
}

