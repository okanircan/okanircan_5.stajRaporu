import QtQuick 2.5
import QtQuick.Controls 1.4
import Turkish 1.0
import English 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Singleton Class")

    Rectangle{
        id : singleton
        width: parent.width
        height: 100 ; y: 0
        Text {
            id : singletontext
            text: "SINGLETON EXAMPLE"
            color: "crimson"
            anchors.centerIn: parent
            font.pointSize: 18
            font.bold: true
        }
    }

    Rectangle {
        id:rect1
        width: 100; x:160
        height: 100; y: 100
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect1text
            text: "1"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle {
        id:rect2
        width: 100
        height: 100 ;y: 100
        anchors.left:rect1.right
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect2text
            text: "2"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }

    Rectangle {
        id : rect3
        width: 100
        height: 100 ;y: 100
        anchors.left:rect2.right
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect3text
            text: "3"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle {
        id : rect4
        width: 100;x:160
        height: 100
        anchors.top: rect1.bottom
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect4text
            text: "4"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle {
        id : rect5
        width: 100
        height: 100
        anchors.left: rect4.right
        anchors.top: rect2.bottom
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect5text
            text: "5"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle {
        id : rect6
        width: 100
        height: 100
        anchors.left: rect5.right
        anchors.top: rect3.bottom
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect6text
            text: "6"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle {
        id:rect7
        width: 100;x:160
        height: 100
        anchors.top: rect4.bottom
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect7text
            text: "7"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle {
        id:rect8
        width: 100
        height: 100
        anchors.left: rect7.right
        anchors.top: rect5.bottom
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect8text
            text: "8"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle {
        id:rect9
        width: 100
        height: 100
        anchors.left: rect8.right
        anchors.top: rect6.bottom
        border.width: 3
        border.color: "Purple"
        Text {
            id: rect9text
            text: "9"
            color: "Black"
            anchors.centerIn: parent
            font.pointSize: 12
            font.bold: true
        }
    }
    Button{
        id : englishButton
        width: 160; x: 0
        height: 200; y:100
        Text {
            text:"ENGLISH"
            font.pointSize: 16
            anchors.centerIn: parent
            color: "midnightblue"
        }
        onClicked: {
            rect1text.text= English.text1
            rect2text.text= English.text2
            rect3text.text= English.text3
            rect4text.text= English.text4
            rect5text.text= English.text5
            rect6text.text= English.text6
            rect7text.text= English.text7
            rect8text.text= English.text8
            rect9text.text= English.text9
        }
    }
    Button{
        id : turkishButton
        width: 160; x: 460
        height: 200; y:100
        Text {
            text:"TURKISH"
            font.pointSize: 16
            anchors.centerIn: parent
            color: "midnightblue"
        }
        onClicked: {
            rect1text.text= Turkish.text1
            rect2text.text= Turkish.text2
            rect3text.text= Turkish.text3
            rect4text.text= Turkish.text4
            rect5text.text= Turkish.text5
            rect6text.text= Turkish.text6
            rect7text.text= Turkish.text7
            rect8text.text= Turkish.text8
            rect9text.text= Turkish.text9
        }
    }
    Button{
        id : resetbutton
        width: 300;x:160
        height: 80;y:400
        Text {
            text:"RESET"
            font.pointSize: 16
            anchors.centerIn: parent
            color: "midnightblue"
        }
        onClicked: {
            rect1text.text= "1"
            rect2text.text= "2"
            rect3text.text= "3"
            rect4text.text= "4"
            rect5text.text= "5"
            rect6text.text= "6"
            rect7text.text= "7"
            rect8text.text= "8"
            rect9text.text= "9"

        }
    }

}
