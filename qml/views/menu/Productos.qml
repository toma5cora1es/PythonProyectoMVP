import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: productosView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Productos"
            font.pointSize: 24
        }

        TextField {
            id: filtroProductos
            placeholderText: "Filtrar productos..."
        }

        ListView {
            id: listaProductos
            width: parent.width * 0.8
            height: 200
            model: 4
            delegate: ItemDelegate {
                text: "Producto " + (index + 1)
            }
        }

        Button {
            text: "Agregar Producto"
            onClicked: {
                console.log("Agregar producto nuevo...")
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