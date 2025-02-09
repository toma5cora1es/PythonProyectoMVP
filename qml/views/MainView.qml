import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 1024
    height: 768
    title: qsTr("Sistema de Gestión")
    
    // Barra superior (header)
    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: "≡"
                font.pointSize: 14
                onClicked: sideMenu.open()
            }
            Label {
                text: "Sistema de Gestión"
                font.pointSize: 12
                font.bold: true
                Layout.fillWidth: true
                horizontalAlignment: Qt.AlignHCenter
            }
        }
    }

    // Contenido principal
    Rectangle {
        anchors.fill: parent
        color: "#f5f5f5"  // Color de fondo suave

        // Área de contenido principal para cargar vistas
        StackView {
            id: stackView
            anchors {
                top: parent.top
                bottom: primaryTabBar.top
                left: parent.left
                right: parent.right
                margins: 10
            }
            initialItem: "qml/views/primary/Clientes.qml"
        }
    }

TabBar {
    id: primaryTabBar
    anchors {
        bottom: parent.bottom
        left: parent.left
        right: parent.right
    }
    height: 60
    contentHeight: 60
    position: TabBar.Footer

    background: Rectangle {
        color: "#2196F3"
    }

    contentItem: RowLayout {
        spacing: 0
        width: parent.width

        TabButton {
            id: clientesTab
            Layout.fillWidth: true
            implicitHeight: 60
            text: qsTr("Clientes")
            icon.source: "qrc:/icons/clients.png"
            display: AbstractButton.TextUnderIcon
            onClicked: stackView.replace("qml/views/primary/Clientes.qml")
        }

        TabButton {
            id: preciosTab
            Layout.fillWidth: true
            implicitHeight: 60
            text: qsTr("Precios")
            icon.source: "qrc:/icons/prices.png"
            display: AbstractButton.TextUnderIcon
            onClicked: stackView.replace("qml/views/primary/Precios.qml")
        }

        TabButton {
            id: presupuestosTab
            Layout.fillWidth: true
            implicitHeight: 60
            text: qsTr("Presupuestos")
            icon.source: "qrc:/icons/quotes.png"
            display: AbstractButton.TextUnderIcon
            onClicked: stackView.replace("qml/views/primary/Presupuestos.qml")
        }
    }
}



    // Menú lateral mejorado
    Drawer {
        id: sideMenu
        width: parent.width * 0.3
        height: parent.height
        
        Rectangle {
            anchors.fill: parent
            color: "#ffffff"

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                // Cabecera del menú
                Rectangle {
                    Layout.fillWidth: true
                    height: 60
                    color: "#1976D2"
                    
                    Label {
                        anchors.centerIn: parent
                        text: qsTr("Menú Principal")
                        color: "white"
                        font.pointSize: 14
                        font.bold: true
                    }
                }

                ListView {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    model: ListModel {
                        ListElement { title: "Comprobantes"; icon: "document" }
                        ListElement { title: "Financiación"; icon: "money" }
                        ListElement { title: "Kits"; icon: "box" }
                        ListElement { title: "Productos"; icon: "product" }
                        ListElement { title: "Promociones"; icon: "promo" }
                        ListElement { title: "VARIABLES"; icon: "settings" }
                    }
                    delegate: ItemDelegate {
                        width: parent.width
                        height: 50
                        
                        RowLayout {
                            anchors.fill: parent
                            anchors.margins: 10
                            spacing: 10
                            
                            Image {
                                source: "qrc:/icons/" + model.icon + ".png"
                                Layout.preferredWidth: 24
                                Layout.preferredHeight: 24
                            }
                            
                            Label {
                                text: model.title
                                font.pointSize: 12
                                Layout.fillWidth: true
                            }
                        }
                        
                        onClicked: {
                            sideMenu.close()
                            stackView.push(Qt.resolvedUrl("qml/views/menu/" + model.title + ".qml"))
                        }
                    }
                }
            }
        }
    }

    NavigationManager {
        id: navManager
        stackView: stackView
    }
}