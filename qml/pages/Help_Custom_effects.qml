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
            title: "Help Custom effects"
            x: Theme.horizontalPageMargin
            width: parent.width - Theme.horizontalPageMargin
            wrapMode: Text.Wrap
        }

        Label {
            text: "Effect duration"
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            "This property holds the expected duration of the effect.",
            "This property defines the total duration of the feedback effect, in milliseconds. It includes the duration of any fade-in or fade-out parts, if any, in non-periodic effects, and includes all repetitions of the period in periodic-effects, if any.",
            "If the duration is set to a value less than <font color=\"" + Theme.highlightColor + "\">attackTime</font> + <font color=\"" + Theme.highlightColor + "\">fadeTime</font>, or less than the <font color=\"" + Theme.highlightColor + "\">period</font> of the effect, the waveform which will result is backend-specific.",
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
            text: "Effect intensity"
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            "This property holds the intensity of the effect.",
            "This property defines the intensity of the feedback effect. The value can be between 0 and 1.",
            "For non-periodic effects, the effect will be at this intensity for (<font color=\"" + Theme.highlightColor + "\">duration</font> - (<font color=\"" + Theme.highlightColor + "\">attackTime</font> + <font color=\"" + Theme.highlightColor + "\">fadeTime</font>)) milliseconds. For periodic effects, the effect will be at this intensity once per period for (<font color=\"" + Theme.highlightColor + "\">period</font> - (<font color=\"" + Theme.highlightColor + "\">attackTime</font> + <font color=\"" + Theme.highlightColor + "\">fadeTime</font>)) milliseconds.",
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
            text: "Effect attackTime"
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            "This property holds the duration of the fade-in effect.",
            "This property defines the duration of the fade-in effect in milliseconds. The effect will ramp up (or down) from <font color=\"" + Theme.highlightColor + "\">attackIntensity</font> to <font color=\"" + Theme.highlightColor + "\">intensity</font> in <font color=\"" + Theme.highlightColor + "\">attackTime</font> milliseconds.",
            "If the attack time is set to a value such that <font color=\"" + Theme.highlightColor + "\">attackTime</font> + <font color=\"" + Theme.highlightColor + "\">fadeTime</font> is greater than <font color=\"" + Theme.highlightColor + "\">duration</font> for non-periodic effects, or greater than <font color=\"" + Theme.highlightColor + "\">period</font> for periodic effects, the waveform which will result is backend-specific.",
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
            text: "Effect attackIntensity"
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            "This property holds the initial intensity of the effect.",
            "This property defines the initial intensity of the effect, before it fades in. It is usually lower than intensity. The effect will ramp up (or down) from <font color=\"" + Theme.highlightColor + "\">attackIntensity</font> to <font color=\"" + Theme.highlightColor + "\">intensity</font> in <font color=\"" + Theme.highlightColor + "\">attackTime</font> milliseconds.",
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
            text: "Effect fadeTime"
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            "This property holds the duration of the fade-out effect.",
            "This property defines the duration of the fade-out effect in milliseconds. The effect will ramp down (or up) from <font color=\"" + Theme.highlightColor + "\">intensity</font> to <font color=\"" + Theme.highlightColor + "\">fadeIntensity</font> in <font color=\"" + Theme.highlightColor + "\">fadeTime</font> milliseconds.",
            "If the fade time is set to a value such that <font color=\"" + Theme.highlightColor + "\">attackTime</font> + <font color=\"" + Theme.highlightColor + "\">fadeTime</font> is greater than <font color=\"" + Theme.highlightColor + "\">duration</font> for non-periodic effects, or greater than <font color=\"" + Theme.highlightColor + "\">period</font> for periodic effects, the waveform which will result is backend-specific.",
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
            text: "Effect fadeIntensity"
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            "This property holds the final intensity of the effect.",
            "This property defines the final intensity of the effect, after it fades out. It is usually lower than intensity. The effect will ramp down (or up) from <font color=\"" + Theme.highlightColor + "\">intensity</font> to <font color=\"" + Theme.highlightColor + "\">fadeIntensity</font> in <font color=\"" + Theme.highlightColor + "\">fadeTime</font> milliseconds.",
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
            text: "Effect period"
            font.pixelSize: Theme.fontSizeMedium
            color: Theme.highlightColor
            x: Theme.horizontalPageMargin
            wrapMode: Text.Wrap
            width: parent.width - Theme.horizontalPageMargin *2
        }

        Repeater {
        model: [
            "This property holds set the period for the effect.",
            "It has a default value of -1, which means that it is not a periodic effect. You can only change the period when the effect is stopped. The duration of the effect should be set to a value larger than the period of the effect if you wish the periodicity to be discernable. Note: Not all actuators support periodic effects.",
            "The period defines the total length of the periodic envelope, which will be repeated up until <font color=\"" + Theme.highlightColor + "\">duration</font> milliseconds has elapsed. For a periodic effect, the intensity will start at <font color=\"" + Theme.highlightColor + "\">attackIntensity</font>, ramp to <font color=\"" + Theme.highlightColor + "\">intensity</font> (where it stays for (<font color=\"" + Theme.highlightColor + "\">period</font> - (<font color=\"" + Theme.highlightColor + "\">attackTime</font> + <font color=\"" + Theme.highlightColor + "\">fadeTime</font>)) milliseconds), then ramp to <font color=\"" + Theme.highlightColor + "\">fadeIntensity</font>. This waveform will be repeated as many times as required until the <font color=\"" + Theme.highlightColor + "\">duration</font> has elapsed.",
            "If the period is set to a value which is less than <font color=\"" + Theme.highlightColor + "\">attackTime</font> + <font color=\"" + Theme.highlightColor + "\">fadeTime</font>, the waveform which will result is backend-specific.",
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
