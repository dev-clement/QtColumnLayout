import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: item
        width: 640
        height: 480
        visible: true

        ColumnLayout {
            id: item2
            anchors.centerIn: item

            Label {
                id: label
                text: qsTr("Progress = ") + busyIndicator.running

                MouseArea {
                    id: mouseArea
                    width: 100
                    height: 100
                    anchors.fill: parent
                    onClicked: {
                        if (busyIndicator.running) {
                            label.text = qsTr("Progress = false")
                            console.log("Turning off")
                            busyIndicator.running = false
                        } else {
                            label.text = qsTr("Progress = true")
                            console.log("Turning on")
                            busyIndicator.running = true
                        }
                    }
                }
            }

            BusyIndicator {
                id: busyIndicator
                Layout.alignment: Qt.AlignCenter
                running: true
                width: 50
                height: 50
            }

        }
    }
}
