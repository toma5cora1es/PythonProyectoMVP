import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: clientesView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Clientes"
            font.pointSize: 24
        }

        // Lista simple para clientes
        ListView {
            id: listaClientes
            width: parent.width * 0.8
            height: 200
            model: 3
            delegate: ItemDelegate {
                text: "Cliente " + (index + 1)
                onClicked: {
                    // Aquí podrías abrir Clientes_Detail.qml pasándole el ID correspondiente
                    mainView.navManager.push("Clientes_Detail.qml")
                }
            }
        }

        Button {
            text: "Nuevo Cliente"
            onClicked: {
                console.log("Crear nuevo cliente...")
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