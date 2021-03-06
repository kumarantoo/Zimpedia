/*
  Copyright (C) 2016 Michal Kosciesza <michal@mkiol.net>

  This file is part of Zimpedia application.

  This Source Code Form is subject to the terms of
  the Mozilla Public License, v.2.0. If a copy of
  the MPL was not distributed with this file, You can
  obtain one at http://mozilla.org/MPL/2.0/.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: root
    objectName: "about"

    SilicaFlickable {
        anchors.fill: parent

        contentHeight: column.height

        Column {
            id: column

            anchors.left: parent.left; anchors.right: parent.right
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("About")
            }

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                source: "image://icons/icon-i-zimpedia"
            }

            InfoLabel {
                text: APP_NAME
            }

            PaddedLabel {
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: Theme.fontSizeMedium
                color: Theme.highlightColor
                text: qsTr("Version %1").arg(APP_VERSION);
            }

            /*PaddedLabel {
                text: qsTr("Offline reader for Wikipedia and other Wiki projects");
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Website");
                onClicked: Qt.openUrlExternally(PAGE)
            }*/

            Button {
                text: qsTr("Changelog")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: pageStack.push(Qt.resolvedUrl("ChangelogPage.qml"))
            }

            /*SectionHeader {
                text: qsTr("ZIM repositories downloads");
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Kiwix");
                onClicked: Qt.openUrlExternally("http://wiki.kiwix.org/wiki/Content_in_all_languages")
            }

            Button {
                text: qsTr("Wikipedia dumps")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: Qt.openUrlExternally("https://dumps.wikimedia.org/other/kiwix/zim/wikipedia/")
            }*/

            SectionHeader {
                text: qsTr("Copyright & license")
            }

            PaddedLabel {
                horizontalAlignment: Text.AlignLeft
                textFormat: Text.RichText
                text: "Copyright &copy; 2016-2017 Michal Kosciesza"
            }

            PaddedLabel {
                horizontalAlignment: Text.AlignLeft
                textFormat: Text.RichText
                text: qsTr("This software is distributed under the terms of the Mozilla Public License v.2.0")
            }

            /*Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("View license");
                onClicked: Qt.openUrlExternally(LICENSE)
            }*/

            SectionHeader {
                text: qsTr("Third party components copyrights")
            }

            PaddedLabel {
                horizontalAlignment: Text.AlignLeft
                textFormat: Text.RichText
                text: "QHTTPServer - Copyright &copy; 2011-2013 Nikhil Marathe"
            }

            PaddedLabel {
                horizontalAlignment: Text.AlignLeft
                textFormat: Text.RichText
                text: "ZimLib - Copyright &copy; 2003-2010 Tommi Maekitalo, openZIM project"
            }

            Spacer {}
        }

        VerticalScrollDecorator {}
    }
}
