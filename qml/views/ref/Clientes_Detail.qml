/* Clientes_Detail.qml
   ----------------------
   Vista de detalle para mostrar la información completa de un cliente.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: clienteDetail
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Detalle del Cliente"
            font.pointSize: 24
        }
        TextField {
            id: nombreField
            placeholderText: "Nombre"
        }
        TextField {
            id: direccionField
            placeholderText: "Dirección"
        }
    }

    Button {
        text: "Volver"
        onClicked: {
            mainView.navManager.pop()
        }
    }

}
