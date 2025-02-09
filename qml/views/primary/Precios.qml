import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: preciosView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Gestión de Precios"
            font.pointSize: 24
        }

        // Ejemplo de cuadro de texto para filtrar precios
        TextField {
            id: filtroPrecios
            placeholderText: "Filtrar producto..."
        }

        // Ejemplo de un contenedor (ListView / TableView) para mostrar listado de productos/precios
        ListView {
            id: listaPrecios
            width: parent.width * 0.8
            height: 200
            model: 5 // Modelo ficticio con 5 registros de ejemplo
            delegate: ItemDelegate {
                text: "Producto " + index + ": $ " + (100 + index * 10)
            }
        }

        Button {
            text: "Actualizar Precios"
            onClicked: {
                // Aquí se llamaría a la lógica que guarde o actualice los precios
                console.log("Actualizando precios...")
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