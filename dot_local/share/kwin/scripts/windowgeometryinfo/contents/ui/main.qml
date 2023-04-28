/*
    KWin - the KDE window manager
    This file is part of the KDE project.

    SPDX-FileCopyrightText: 2022 Richard Qian <richWiki101@gmail.com>

    SPDX-License-Identifier: GPL-2.0-or-later
*/
import QtQuick 2.0;

Item {
    id: root

    Loader {
        id: mainItemLoader
    }

    function handleWindow(window) {
        window.clientStartUserMovedResized.connect((window) => {
            if (!mainItemLoader.item) {
                mainItemLoader.setSource("osd.qml", { "window": window });
            }
        });
        window.clientFinishUserMovedResized.connect((window) => {
            mainItemLoader.source = "";
        });
    }

    Connections {
        target: workspace
        function onClientAdded(window) {
            root.handleWindow(window);
        }
    }

    Component.onCompleted: {
        const windows = workspace.clients;
        for (let i = 0; i < windows.length; ++i) {
            root.handleWindow(windows[i]);
        }
    }
}
