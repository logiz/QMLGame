import QtQuick 2.3
import QtQuick.Controls 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    Text {
        id: textLogin
        x: 231
        y: 30
        text: qsTr("Your Login")
        font.pixelSize: 12
    }


    ProgressBar {
        id: progressBar1
        x: 11
        y: 186
        width: 93
        height: 23
        orientation: 1
        value: 2
        maximumValue: 10
    }

    ListView {
        id: listView1
        x: 0
        y: 11
        width: 110
        height: 169
        delegate: Item {
            x: 5
            width: 100
            height: 20
            Row {
                id: row1

                Text {
                    text: score
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    text: name
                    font.bold: false
                    anchors.verticalCenter: parent.verticalCenter
                }

                spacing: 10
            }
        }
        model: ListModel {
            ListElement {
                name: "Grey"
                score: "1"
            }

            ListElement {
                name: "Red"
                score: "3"
            }

            ListElement {
                name: "Blue"
                score: "12"
            }

            ListElement {
                name: "Green"
                score: "16"
            }
        }
    }

        Grid {
            id: grid1
            x: 305
            y: 280
            width: 313
            height: 131

            Button {
                id: buttonUp
                width: 75
                height: 64
                text: qsTr("up")
            }

            Button {
                id: buttonDown
                width: 75
                height: 67
                text: qsTr("down")
            }

            Button {
                id: buttonLeft
                width: 75
                height: 69
                text: qsTr("left")
            }

            Button {
                id: buttonRight
                width: 75
                height: 69
                text: qsTr("right")
            }
        }
}
