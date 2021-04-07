import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id:myWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id : toplabel
        anchors{
            left: parent.left
            right: parent.left
            top: parent.top
        }
        width: parent.width
        height: 80
        border.width: 5
        border.color: 'Black'
        Text {
            id : listviewtext
            text: "ListView Example"
            color: "Black"
            font.pointSize: 12
            font.bold: true
        }
    }
    Rectangle{
        id:first
        width: 270
        height: 70
        anchors.top: myListView.bottom
        anchors.left: first.right
        border.width: 4
        border.color: 'black'
        TextArea{
            id:namelist
            anchors.fill: parent
            font.bold: true
            font.pointSize: 12
        }
    }
    Rectangle{
        id:second
        anchors.left: first.right
        anchors.top: myListView.bottom
        width: 270
        height: 70
        border.width: 4
        border.color: 'black'
        TextArea{
            id:namelist2
            anchors.fill: parent
            font.bold: true
            font.pointSize: 12
        }
    }
    Button{
        id:addButton
        anchors.left: second.right
        anchors.top: myListView.bottom
        width: 80
        height: 70
        text: 'ADD'
        onClicked: {
            myListView.model.append({texttt: "Name  :    " + namelist.text  + "   Age   :"+ namelist2.text})
            namelist.clear()
            namelist2.clear()
        }
    }
    ListView{
        width: parent.width
        height: 300
        anchors.top: toplabel.bottom
        id:myListView
        model: ListModel{}
        spacing: 5
        anchors.margins: 5
        delegate: Rectangle{
            anchors.top: toplabel.bottom
            height: 20
            color: 'purple'
            border.width: 4
            border.color: 'black'
            Text {
                anchors{
                    left: parent.left
                    right: parent.right
                    top: toplabel.bottom
                }
                text: texttt
                color:"purple"
                font.pointSize: 14
            }
        }
    }
}
