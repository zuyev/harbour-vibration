/*
  Copyright (C) 2013 Jolla Ltd.
  Contact: Thomas Perl <thomas.perl@jollamobile.com>
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.6
import Sailfish.Silica 1.0


Page {
    id: page

    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentWidth: parent.width
        contentHeight: column.height + Theme.paddingLarge

        VerticalScrollDecorator {}

    Column {
        id: column

        width: page.width
        spacing: Theme.paddingLarge

        PageHeader {
            title: qsTr("Help Theme effects")
            x: Theme.horizontalPageMargin
            width: parent.width - Theme.horizontalPageMargin
            wrapMode: Text.Wrap
        }

        Label {
            text: qsTr("Button, KeyPad, Long")
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            qsTr("Effects determined by the current Theme (system settings)."),
        ]
        Label {
            text: modelData
            font.pixelSize: Theme.fontSizeMedium
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
            horizontalAlignment: TextEdit.AlignJustify
            }
        }

        Label {
            text: ""
            font.pixelSize: Theme.fontSizeMedium /10
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Label {
            text: qsTr("Periodic")
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            qsTr("Effects values used"),
            qsTr("intensity: 0.9"),
            qsTr("duration: 2000"),
            qsTr("attackTime: 500"),
            qsTr("fadeTime: 1000"),
            qsTr("attackIntensity: 0.5"),
            qsTr("fadeIntensity: 0.1"),
            qsTr("period: 20"),
        ]
        Label {
            text: modelData
            font.pixelSize: Theme.fontSizeMedium
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
            horizontalAlignment: TextEdit.AlignJustify
            }
        }
    }
    }
}
