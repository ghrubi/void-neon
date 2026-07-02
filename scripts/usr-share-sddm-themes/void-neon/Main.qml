import QtQuick 2.15
import SddmComponents 2.0

Rectangle {
    id: root
    width: 1920
    height: 1080
    color: "#000000"

    property string accent: "#00e5ff"
    property string textColor: "#e6faff"
    property string mutedColor: "#6f7f86"
    property string errorColor: "#ff4d6d"

    function currentUser() {
        if (userModel.lastUser && userModel.lastUser.length > 0) {
            return userModel.lastUser
        }

        if (userModel.count > 0) {
            return userModel.data(userModel.index(0, 0), Qt.DisplayRole)
        }

        return ""
    }

    function login() {
        errorText.text = ""
        sddm.login(currentUser(), password.text, 0)
    }

    Component.onCompleted: {
        password.forceActiveFocus()
    }

    Connections {
        target: sddm

        function onLoginFailed() {
            errorText.text = "Authentication failed"
            password.text = ""
            password.forceActiveFocus()
        }
    }

    Image {
        anchors.fill: parent
        source: "background.png"
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle {
        anchors.fill: parent
        color: "#000000"
        opacity: 0.65
    }

    Column {
        id: loginBox
        width: 320
        spacing: 20
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -60

        Text {
            text: "Void Neon"
            color: root.accent
            font.family: "Inter"
            font.pixelSize: 30
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Text {
            text: root.currentUser()
            color: root.textColor
            font.family: "Inter"
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }

        Rectangle {
            width: parent.width
            height: 38
            radius: height / 2
            color: "#000000"
            border.color: password.activeFocus ? root.accent : root.mutedColor
            border.width: 2

            TextInput {
                id: password
                anchors.fill: parent
                anchors.leftMargin: 18
                anchors.rightMargin: 18
                color: root.textColor
                echoMode: TextInput.Password
                font.family: "Inter"
                font.pixelSize: 17
                verticalAlignment: TextInput.AlignVCenter
                focus: true

                Keys.onReturnPressed: root.login()
                Keys.onEnterPressed: root.login()
                Keys.onEscapePressed: password.text = ""
            }
        }

        Text {
            id: errorText
            text: ""
            color: root.errorColor
            font.family: "Inter"
            font.pixelSize: 13
            horizontalAlignment: Text.AlignHCenter
            width: parent.width
        }
    }

    Text {
        text: "Hyprland"
        color: root.mutedColor
        font.family: "Inter"
        font.pixelSize: 14
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 28
    }

    Row {
        spacing: 18
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 28

        Text {
            text: "Restart"
            color: root.mutedColor
            font.family: "Inter"
            font.pixelSize: 14

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: sddm.reboot()
            }
        }

        Text {
            text: "Shutdown"
            color: root.mutedColor
            font.family: "Inter"
            font.pixelSize: 14

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: sddm.powerOff()
            }
        }
    }
}
