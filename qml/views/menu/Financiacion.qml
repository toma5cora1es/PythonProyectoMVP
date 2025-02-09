import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: financiacionView
    anchors.fill: parent

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Financiaciones"
            font.pointSize: 24
        }

        // Ejemplo: selección de un plan de cuotas
        ComboBox {
            id: comboFinanciacion
            model: ["Plan 3 cuotas", "Plan 6 cuotas", "Plan 12 cuotas"]
        }

        Button {
            text: "Aplicar Financiación"
            onClicked: {
                console.log("Aplicando: " + comboFinanciacion.currentText)
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