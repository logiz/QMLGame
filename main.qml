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
