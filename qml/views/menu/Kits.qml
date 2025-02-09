import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: kitsView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Kits"
            font.pointSize: 24
        }

        ListView {
            id: listaKits
            width: parent.width * 0.8
            height: 200
            model: 3
            delegate: ItemDelegate {
                text: "Kit " + (index + 1) + " - Detalle..."
            }
        }

        Button {
            text: "Crear Kit"
            onClicked: {
                console.log("Crear un nuevo kit...")
            }
        }
    }

    Button {
        text: "Volver"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        onClicked: {
            mainView.navManager.pop()
        }
    }
}