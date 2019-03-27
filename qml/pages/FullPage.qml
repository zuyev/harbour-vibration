/****************************************************************************************
**
** Copyright (C) 2013 Jolla Ltd.
** Contact: Chris Adams <chris.adams@jollamobile.com>
** All rights reserved.
**
** This file is part of Sailfish Silica UI component package.
**
** You may use this file under the terms of BSD license as follows:
**
** Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are met:
**     * Redistributions of source code must retain the above copyright
**       notice, this list of conditions and the following disclaimer.
**     * Redistributions in binary form must reproduce the above copyright
**       notice, this list of conditions and the following disclaimer in the
**       documentation and/or other materials provided with the distribution.
**     * Neither the name of the Jolla Ltd nor the
**       names of its contributors may be used to endorse or promote products
**       derived from this software without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
** ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
** WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
** DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
** ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
** (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
** ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
** SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
****************************************************************************************/

import QtQuick 2.6
import QtFeedback 5.0
import Sailfish.Silica 1.0


Page {
    id: page

    property bool repeat: false
    property int repeat_value: 100
    property int repeat_value_start: 0
    property bool press: false

    ThemeEffect {
        id: buttonBuzz
        effect: ThemeEffect.Press
    }

    ThemeEffect {
        id: keypadBuzz
        effect: ThemeEffect.PressWeak
    }

    ThemeEffect {
        id: longBuzz
        effect: ThemeEffect.PressStrong
    }

    HapticsEffect {
        id: customBuzz
        intensity: intensitySlider.value
        duration: durationSlider.value
        attackTime: attackTimeSlider.value
        fadeTime: fadeTimeSlider.value
        attackIntensity: attackIntensitySlider.value
        fadeIntensity: fadeIntensitySlider.value
        period: periodSlider.value
    }

    HapticsEffect {
        id: periodicBuzz
        intensity: 0.9
        duration: 2000
        attackTime: 500
        fadeTime: 1000
        attackIntensity: 0.5
        fadeIntensity: 0.1
        period: 20
    }  

    function timeChanged() {
        customBuzz.start()
    }

    Timer {
            interval: repeat_value_start; running: true; repeat: true
            onTriggered: timeChanged()
        }


    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height + Theme.paddingSmall
        contentWidth: parent.width

        VerticalScrollDecorator {}
        Column {
            id: column

            width: parent.width
            spacing: Theme.paddingSmall

            PageHeader {
                title: qsTr("Extended effects")
            }

            SectionHeader {
                text: qsTr("Theme effects")
            }

            ButtonLayout {
                Button {
                    text: qsTr("Button")
                    onPressed: buttonBuzz.play()
                }

                Button {
                    text: qsTr("Long")
                    onPressed: longBuzz.play()
                }
            }


            ButtonLayout {
                Button {
                    text: qsTr("Keypad")
                    onPressed: keypadBuzz.play()
                }
                Button {
                    text: qsTr("Periodic")
                    onPressed: periodicBuzz.start()
                }
            }


            Label {
                text: ""
                font.pixelSize: Theme.fontSizeMedium /4
                x: Theme.horizontalPageMargin
                wrapMode: Text.Wrap
                width: parent.width - Theme.horizontalPageMargin *2
            }

            SectionHeader {
                text: qsTr("Custom effects")
            }


            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Effect duration:") + "  " + durationSlider.value
            }


            ButtonLayout {
                Button {
                    text: "-"
                    onClicked: {
                         if (durationSlider.value > 1)
                             {
                             durationSlider.value = durationSlider.value - 1
                         }
                     }
                 }
                Button {
                    text: "+"
                    onClicked: {
                        if (durationSlider.value < 2000)
                            {
                            durationSlider.value = durationSlider.value + 1
                        }
                    }
                }
            }

            Slider {
                id: durationSlider
                width: page.width
                value: 25
                stepSize: 1
                valueText: value
                minimumValue: 1
                maximumValue: 2000
                label: qsTr("Effect duration")
            }

            Slider {
                id: intensitySlider
                width: page.width
                value: 0.9
                stepSize: 0.1
                valueText: value
                minimumValue: 0.0
                maximumValue: 1.0
                label: qsTr("Effect intensity")
            }

            Label {
                  text: ""
                  font.pixelSize: Theme.fontSizeMedium /4
                  x: Theme.horizontalPageMargin
                  wrapMode: Text.Wrap
                  width: parent.width - Theme.horizontalPageMargin *2
              }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Effect attackTime:") + "  " + attackTimeSlider.value
            }

            ButtonLayout {
                Button {
                    text: "-"
                    onClicked: {
                         if (attackTimeSlider.value > 0)
                             {
                             attackTimeSlider.value = attackTimeSlider.value - 1;
                         }
                     }
                 }
                Button {
                    text: "+"
                    onClicked: {
                        if (attackTimeSlider.value < 1000)
                            {
                            attackTimeSlider.value = attackTimeSlider.value + 1
                        }
                    }
                }
            }
            Slider {
                id: attackTimeSlider
                width: page.width
                value: 0
                stepSize: 1
                valueText: value
                minimumValue: 0
                maximumValue: 1000
                label: qsTr("Effect attackTime")
            }
            Slider {
                id: attackIntensitySlider
                width: page.width
                value: 0
                stepSize: 0.1
                valueText: value
                minimumValue: 0.0
                maximumValue: 1.0
                label: qsTr("Effect attackIntensity")
            }

            Label {
                  text: ""
                  font.pixelSize: Theme.fontSizeMedium /4
                  x: Theme.horizontalPageMargin
                  wrapMode: Text.Wrap
                  width: parent.width - Theme.horizontalPageMargin *2
              }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Effect fadeTime:") + "  " + fadeTimeSlider.value
            }
            ButtonLayout {
                Button {
                    text: "-"
                    onClicked: {
                         if (fadeTimeSlider.value > 0)
                             {
                             fadeTimeSlider.value = fadeTimeSlider.value - 1;
                         }
                     }
                 }
                Button {
                    text: "+"
                    onClicked: {
                        if (fadeTimeSlider.value < 1000)
                            {
                            fadeTimeSlider.value = fadeTimeSlider.value + 1
                        }
                    }
                }
            }

            Slider {
                id: fadeTimeSlider
                width: page.width
                value: 0
                stepSize: 1
                valueText: value
                minimumValue: 0
                maximumValue: 1000
                label: qsTr("Effect fadeTime")
            }
            Slider {
                id: fadeIntensitySlider
                width: page.width
                value: 0
                stepSize: 0.1
                valueText: value
                minimumValue: 0.0
                maximumValue: 1.0
                label: qsTr("Effect fadeIntensity")
            }

            Label {
                  text: ""
                  font.pixelSize: Theme.fontSizeMedium /4
                  x: Theme.horizontalPageMargin
                  wrapMode: Text.Wrap
                  width: parent.width - Theme.horizontalPageMargin *2
              }

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Effect period:") + "  " + periodSlider.value
            }
            ButtonLayout {
                Button {
                    text: "-"
                    onClicked: {
                         if (periodSlider.value > -1)
                             {
                             periodSlider.value = periodSlider.value - 1;
                         }
                     }
                 }
                Button {
                    text: "+"
                    onClicked: {
                        if (periodSlider.value < 100)
                            {
                            periodSlider.value = periodSlider.value + 1
                        }
                    }
                }
            }
            Slider {
                id: periodSlider
                width: page.width
                value: -1
                stepSize: 1
                valueText: value
                minimumValue: -1
                maximumValue: 100
                label: qsTr("Effect period")
            }

//          Label {
//                text: ""
//                font.pixelSize: Theme.fontSizeMedium /4
//                x: Theme.horizontalPageMargin
//                wrapMode: Text.Wrap
//                width: parent.width - Theme.horizontalPageMargin *2
//            }

          TextSwitch {
              id: repeatTextSwitch
              text: qsTr("Repeat")
              checked: repeat
              onClicked: {
                  if (repeat === false) {repeat = true; repeat_value = repeatSlider.value}
                  else {repeat = false; repeat_value = repeatSlider.value; repeat_value_start = 0; press = false}
              }
          }

          Label {
              x: Theme.horizontalPageMargin
              text: qsTr("Delay:") + "  " + repeatSlider.value
          }

          ButtonLayout {
              Button {
                  text: "-"
                  onClicked: {
                       if (repeatSlider.value > 1)
                           {
                           repeatSlider.value = repeatSlider.value - 1
                       }
                   }
               }
              Button {
                  text: "+"
                  onClicked: {
                      if (repeatSlider.value < 2000)
                          {
                          repeatSlider.value = repeatSlider.value + 1
                      }
                  }
              }
          }

          Slider {
              id: repeatSlider
              width: page.width
              value: repeat_value
              stepSize: 1
              valueText: {value; if (repeat === true) if (press === true) repeat_value_start = repeatSlider.value}
              minimumValue: 1
              maximumValue: 2000
              label: qsTr("Delay")
          }

        Label {
              text: ""
              font.pixelSize: Theme.fontSizeMedium /4
              x: Theme.horizontalPageMargin
              wrapMode: Text.Wrap
              width: parent.width - Theme.horizontalPageMargin *2
          }

//            Button {
//                text: qsTr("Custom")
//                enabled: !repeat
//                anchors.horizontalCenter: parent.horizontalCenter
//                onPressed: customBuzz.start()
//                preferredWidth: Theme.buttonWidthLarge
//            }

            Button {
                text: if (repeat === false) qsTr("onPressed"); else if (press === false) qsTr("Custom Start"); else qsTr("Custom Stop")
                anchors.horizontalCenter: parent.horizontalCenter
                onPressed: if (repeat === true) {repeat_value_start = repeatSlider.value;
                           press = !press;
                           if (press === false) repeat_value_start = 0;
                           } else timeChanged()
                preferredWidth: Theme.buttonWidthLarge
            }
            Button {
                text: qsTr("onReleased")
                enabled: !repeat
                anchors.horizontalCenter: parent.horizontalCenter
                onReleased: customBuzz.start()
                preferredWidth: Theme.buttonWidthLarge
            }
            Button {
                text: qsTr("onClicked")
                enabled: !repeat
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: customBuzz.start()
                preferredWidth: Theme.buttonWidthLarge
            }
            Button {
                text: qsTr("onPressed, onReleased")
                enabled: !repeat
                anchors.horizontalCenter: parent.horizontalCenter
                onPressed: customBuzz.start()
                onReleased: customBuzz.start()
                preferredWidth: Theme.buttonWidthLarge
            }
        }




        PullDownMenu {

//            MenuItem {
//                text: qsTr("About ...")
//                onClicked: {pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
//                repeat_value_start = 0;
//                press = false;
//            }
//            }

            MenuItem {
                text: qsTr("Help")
                onClicked: {pageStack.push(Qt.resolvedUrl("Help.qml"));
                    repeat_value_start = 0;
                    press = false;
                }
            }

            MenuItem {
                text: qsTr("Reset settings")
                onClicked: {durationSlider.value = 25;
                    intensitySlider.value = 0.9;
                    attackTimeSlider.value = 0;
                    fadeTimeSlider.value = 0;
                    attackIntensitySlider.value = 0.0;
                    fadeIntensitySlider.value = 0.0;
                    periodSlider.value = -1;
                    repeatSlider.value = 100;
                    repeat_value = 100;
                    repeat_value_start = 0;
                    press = false;
                }
            }

            MenuLabel {
                text: qsTr("Menu")
            }
  }
}
}

