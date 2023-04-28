/*
    KWin - the KDE window manager
    This file is part of the KDE project.

    SPDX-FileCopyrightText: 2022 Richard Qian <richWiki101@gmail.com>

    SPDX-License-Identifier: GPL-2.0-or-later
*/
import QtQuick 2.0;
import QtQuick.Controls 2.0;
import QtQuick.Window 2.0;
import org.kde.plasma.components 2.0 as PlasmaComponents;
import org.kde.plasma.core 2.0 as PlasmaCore;
import org.kde.kwin 2.0;

PlasmaCore.Dialog {
    id: dialog

    required property QtObject window

    x: window.x + (window.width - width) / 2
    y: window.y + (window.height - height) / 2

    location: PlasmaCore.Types.Floating
    visible: true
    flags: Qt.X11BypassWindowManagerHint | Qt.FramelessWindowHint
    outputOnly: true

    mainItem: Item {
        id: dialogItem
        width: infoElement.width
        height: infoElement.height

        PlasmaComponents.Label {
            id: infoElement
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: window.x + "," + window.y + "<br>(<b>" +
                window.width + "&nbsp;x&nbsp;" + window.height + "</b>)"
        }
    }

    Component.onCompleted: {
        KWin.registerWindow(dialog);
    }
}
