/* Button.qml
   -----------
   Componente personalizado para botones, reutilizable en toda la aplicación.
   Los comentarios guían al AI assistant para extender estilos o animaciones.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    text: "Botón Personalizado"
    Behavior on pressed {
        NumberAnimation {
            property: "scale"
            to: 0.9
            duration: 150
            easing.type: Easing.InOutQuad
        }
    }
}

