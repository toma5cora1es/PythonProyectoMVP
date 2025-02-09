import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: comprobantesView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Comprobantes"
            font.pointSize: 24
        }

        ListView {
            id: listaComprobantes
            width: parent.width * 0.8
            height: 200
            model: 5
            delegate: ItemDelegate {
                text: "Comprobante " + (index + 1) + " - Fecha: 2023-10-" + (10+index)
            }
        }

        Button {
            text: "Nuevo Comprobante"
            onClicked: {
                console.log("Creando nuevo comprobante...")
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