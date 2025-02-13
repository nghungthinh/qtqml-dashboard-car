import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 2.13
import QtQuick.Controls 2.15

RowLayout {
    id: root 
    
    spacing: 0

    /* Column 1*/
    ColumnLayout {
        id: col1

        Layout.fillHeight: true
        Layout.preferredWidth : parent.width * 0.2

        Layout.topMargin: -40
        Layout.leftMargin: 5
        Layout.rightMargin: 5
        Layout.bottomMargin: 5
        spacing: 5

        Layout.alignment: Qt.AlignTop

        Rectangle
        {
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: columnLayout_connect.implicitHeight 

            color: "red"

            radius: 15

            ColumnLayout
            {
                id: columnLayout_connect
                width: parent.width

                spacing: 0

                Rectangle
                {
                    Layout.preferredHeight: parent.height * 0.2
                    Layout.fillWidth: true
                    color: "white"

                    radius: 15

                    Layout.margins: 8
                }

                Rectangle
                {
                    Layout.preferredHeight: 80
                    Layout.fillWidth: true
                    color: "black"

                    radius: 15

                    Layout.margins: 8
                }

                Rectangle
                {
                    Layout.preferredHeight: 80
                    Layout.fillWidth: true
                    color: "black"

                    radius: 15

                    Layout.margins: 8
                }
            }
        }

        Rectangle
        {
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: columnLayout_systemStatus.implicitHeight 

            color: "brown"

            radius: 15

            ColumnLayout
            {
                id: columnLayout_systemStatus
                width: parent.width
                Layout.fillHeight: true

                spacing: 0

                Rectangle
                {
                    Layout.preferredHeight: 40
                    Layout.fillWidth: true
                    color: "white"

                    radius: 15

                    Layout.margins: 8
                }

                Rectangle
                {
                    Layout.preferredHeight: 80
                    Layout.fillWidth: true
                    color: "black"

                    radius: 15

                    Layout.margins: 8
                }
            }
        }

        Rectangle {
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: 180
            color: "black"
            radius: 15
        }


        Rectangle {
            Layout.preferredWidth: parent.width
            Layout.fillHeight: true

            color: "green"

            radius: 15
        }
    }

    /* Column 2*/
    ColumnLayout {
        Layout.preferredWidth : parent.width * 0.6
        Layout.fillHeight: true

        Rectangle
        {
            Layout.preferredHeight : parent.height * 0.6
            Layout.preferredWidth : parent.width
            color: "black"
        }

        RowLayout
        {
            Layout.preferredHeight : parent.height * 0.3
            Layout.preferredWidth : parent.width

            Rectangle
            {
                Layout.fillHeight: true
                Layout.fillWidth: true
                // Layout.preferredWidth : parent.width
                color: "blue"
            }

            Rectangle
            {
                Layout.fillHeight: true
                Layout.fillWidth: true
                // Layout.preferredWidth : parent.width
                color: "red"
            }

            Rectangle
            {
                Layout.fillHeight: true
                Layout.fillWidth: true
                // Layout.preferredWidth : parent.width
                color: "white"
            }
        }

        Rectangle
        {
            Layout.preferredHeight : parent.height * 0.1
            Layout.preferredWidth : parent.width
            color: "blue"
        }
    }

    /* Column 3 */
    ColumnLayout {
        Layout.fillHeight: true
        Layout.preferredWidth : parent.width * 0.2

        Layout.topMargin: -40
        Layout.leftMargin: 5
        Layout.rightMargin: 5
        Layout.bottomMargin: 5

        Layout.alignment: Qt.AlignTop

        ColumnLayout
        {
            id: col3_ControlLayout
            Layout.preferredWidth: parent.width
            Layout.preferredHeight: col3_ControlLayout.implicitHeight 
            
            RowLayout {
                Layout.preferredWidth: parent.Layout.preferredWidth
                Layout.preferredHeight: 50
                spacing: 0

                Rectangle {
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: parent.width * 0.5

                    color: "red"

                    radius: 15
                }

                Rectangle {
                    
                    id: button_right
                    Layout.preferredHeight: 50
                    Layout.preferredWidth: parent.width * 0.5

                    property bool checked: false

                    color: "yellow"

                    radius: 15

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            // Add your click handling code here
                            button_right.checked = !button_right.checked
                        }
                    }
                }
            }

            Rectangle {
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: 50

                color: "#1E1E1E"  

                Layout.topMargin: -20

            }

            Rectangle {
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: button_right.checked ? 250: 400

                Behavior on Layout.preferredHeight {
                    NumberAnimation {
                        duration: 700 // Thời gian kéo dài hơn để tạo sự chuyển động mượt mà hơn
                        easing.type: Easing.OutElastic // Hiệu ứng co giãn giống như cao su
                    }
                }

                color: "#1E1E1E"

                radius: 15

                Layout.topMargin: -20


                ColumnLayout {
                    id: col3_Control_Button

                    width: parent.width
                    
                    spacing: 5

                    Rectangle {
                        Layout.preferredHeight: 80
                        Layout.fillWidth: true
                        
                        color: "red"
                    }

                    Rectangle {
                        Layout.preferredHeight: 80
                        Layout.fillWidth: true
                        
                        color: "red"
                    }
                }
            }
        }

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth : parent.width
            color: "red"
        }

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth : parent.width
            color: "blue"
        }

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth : parent.width
            color: "white"
        }

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth : parent.width
            color: "yellow"
        }

        Rectangle
        {
            Layout.fillHeight: true
            Layout.preferredWidth : parent.width
            color: "brown"
        }
    }
}