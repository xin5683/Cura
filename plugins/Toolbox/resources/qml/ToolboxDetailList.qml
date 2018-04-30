// Copyright (c) 2018 Ultimaker B.V.
// Toolbox is released under the terms of the LGPLv3 or higher.

import QtQuick 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import UM 1.1 as UM

Item
{
    id: detailList
    ScrollView
    {
        frameVisible: false
        anchors.fill: detailList
        style: UM.Theme.styles.scrollview
        Column
        {
            anchors
            {
                right: detailList.right
                topMargin: UM.Theme.getSize("wide_margin").height
                bottomMargin: UM.Theme.getSize("wide_margin").height
                top: parent.top
            }
            // TODO: Sometimes the height is not the childrenRect.height. Lord
            // knows why. Probably because QT is garbage.
            height: childrenRect.height
            spacing: UM.Theme.getSize("default_margin").height
            Repeater
            {
                model: toolbox.packagesModel
                delegate: ToolboxDetailTile {}
            }
        }
    }
}
