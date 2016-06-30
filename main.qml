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

    Row {
        id: row2
        x: 115
        y: 92
        width: 371
        height: 230


        ListView {
            id: listView1
            width: 110
            height: 160
            delegate: Item {
                x: 5
                width: 100
                height: 20
                Row {
                    id: row1
                    Rectangle {
                        width: 40
                        height: 40
                        color: colorCode
                    }

                    Text {
                        text: name
                        font.bold: true
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    spacing: 10
                }
            }
            model: ListModel {
                ListElement {
                    name: "Grey"
                    colorCode: "grey"
                }

                ListElement {
                    name: "Red"
                    colorCode: "red"
                }

                ListElement {
                    name: "Blue"
                    colorCode: "blue"
                }

                ListElement {
                    name: "Green"
                    colorCode: "green"
                }
            }
        }
        Column {
            id: column1
            width: 200
            height: 400

            Button {
                id: buttonUp
                text: qsTr("up")
            }

            Button {
                id: buttonDown
                text: qsTr("down")
            }

            Button {
                id: buttonRight
                text: qsTr("right")
            }

            Button {
                id: buttonLeft
                text: qsTr("left")
            }

            ProgressBar {
                id: progressBar1
            }
        }
    }
}
