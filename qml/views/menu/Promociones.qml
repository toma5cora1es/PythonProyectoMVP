import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: promocionesView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Promociones"
            font.pointSize: 24
        }

        // Ejemplo: Muestra una lista de promociones aplicables
        ListView {
            id: listaPromociones
            width: 200
            height: 150
            model: 3
            delegate: ItemDelegate {
                text: "Promoción " + (index + 1)
            }
        }

        Button {
            text: "Crear Nueva Promoción"
            onClicked: {
                console.log("Creando nueva promoción...")
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