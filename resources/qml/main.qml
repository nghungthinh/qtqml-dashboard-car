import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 2.13
import QtQuick.Controls 2.15

import "qrc:/components/common"

ApplicationWindow {
    id: root
    width: 1920
    height: 1063
    visible: true
    title: "Dashboard Car"

    // Background
    background: Image {
        source: "qrc:/images/background"
        fillMode: Image.Stretch
    }

    // Main Layout
    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        // Header
        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 80
            color: "transparent"

            RowLayout {
                anchors.fill: parent
                spacing: 20
                // Header content
            }
        }

        // Main Content
        RowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 0

            // Left Panel (Navigation)
            Rectangle {
                Layout.preferredWidth: root.width * 0.25
                Layout.fillHeight: true
                color: "transparent"
                // Navigation content
            }

            // Center Panel (Camera View)
            Rectangle {
                Layout.preferredWidth: root.width * 0.5
                Layout.fillHeight: true
                color: "transparent"
                // Camera view content
            }

            // Right Panel (Controls)
            Rectangle {
                Layout.preferredWidth: root.width * 0.25
                Layout.fillHeight: true
                color: "transparent"
                // Control panel content
            }
        }
    }
}