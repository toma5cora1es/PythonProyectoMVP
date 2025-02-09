import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: presupuestosView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Presupuestos"
            font.pointSize: 24
        }

        TextField {
            id: filtroPresupuestos
            placeholderText: "Buscar por cliente o número..."
        }

        ListView {
            id: listaPresupuestos
            width: parent.width * 0.8
            height: 200
            model: 4 // Modelo ficticio
            delegate: ItemDelegate {
                text: "Presupuesto " + index + " - Total: $ " + (2000 + index * 350)
            }
        }

        Button {
            text: "Crear Nuevo Presupuesto"
            onClicked: {
                console.log("Crear Presupuesto...")
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