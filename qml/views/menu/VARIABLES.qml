import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: variablesView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Variables de Configuración"
            font.pointSize: 24
        }

        // Ejemplo de campos para configurar valores
        Row {
            spacing: 5
            Label {
                text: "Tasa de IVA:"
            }
            TextField {
                placeholderText: "Ej: 21"
            }
        }

        Row {
            spacing: 5
            Label {
                text: "Descuento General:"
            }
            TextField {
                placeholderText: "Ej: 5 %"
            }
        }

        Button {
            text: "Guardar Configuración"
            onClicked: {
                console.log("Guardando configuración de Variables...")
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