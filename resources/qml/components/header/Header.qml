import QtQuick 2.14
import QtQuick.Layouts 2.13

Rectangle {
    id: root
    property alias headerWidth: root.width
    property alias headerHeight: root.height

    color: "blue"

    anchors {
        top: parent.top
        left: parent.left
        right: parent.right
    }

    RowLayout 
    {
        id: rowIcons
        width: 200
        spacing: 10

        anchors.centerIn: parent

        ImageTextButton {
            id: controlButton
            checked: true
            textValue: "Control"
            imageSource: controlButton.checked ? "../assets/icons/control_on.png" : "../assets/icons/control_off.png"
            colorButton: controlButton.checked ? "#505050" : "#1E1E1E"

            onClicked: {
                controlButton.checked = !controlButton.checked
            }
        }

        ImageTextButton {
            id: calibrationButton
            checked: true
            textValue: "Calibration"
            imageSource: calibrationButton.checked ? "../assets/icons/control_on.png" : "../assets/icons/control_off.png"
            colorButton: calibrationButton.checked ? "#505050" : "#1E1E1E"
            

            onClicked: {
                calibrationButton.checked = !calibrationButton.checked
            }
        }

        ImageTextButton {
            id: parameterButton
            checked: true
            textValue: "Parameter"
            imageSource: parameterButton.checked ? "../assets/icons/control_on.png" : "../assets/icons/control_off.png"
            colorButton: parameterButton.checked ? "#505050" : "#1E1E1E"


            onClicked: {
                parameterButton.checked = !parameterButton.checked
            }
        }
    }
}