// NavigationManager.qml
import QtQuick 2.15

QtObject {
    id: navigationManager

    property var stackView: null // Referencia al StackView

    function push(viewName) {
        if (stackView) {
            stackView.push(Qt.resolvedUrl(viewName))
        } else {
            console.warn("StackView no asignado al NavigationManager.")
        }
    }

    function pop() {
        if (stackView) {
            stackView.pop()
        }
    }

    function clear() {
         if (stackView) {
            stackView.clear()
        }
    }
}