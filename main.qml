import QtQml 2.12
import QtWidgets 5.12

MainWindow {
    id: mainWindow
    windowTitle: qsTr("Hello World")

    centralWidget: Widget {
        layout: VBoxLayout {
            PushButton {
                text: qsTr("Open File...")
                onClicked: saveAsButton.visible = !saveAsButton.visible
            }
            PushButton {
                id: saveAsButton
                text: qsTr("Save As...")
            }
            PushButton {
                text: qsTr("Quit")
                onClicked: Qt.quit();
            }

            HBoxLayout {
                spacing: 50

                PushButton {
                    text: qsTr("Previous")
                }
                PushButton {
                    text: qsTr("Next")
                }
            }
        }
    }

    Component.onCompleted: visible = true
}
