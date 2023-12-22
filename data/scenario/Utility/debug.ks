@layopt layer=message0 visible=false

@clearfix
[hidemenubutton]
[freeimage layer=0 page=back]
[cm]

[position layer="message0" left="160" top="800" width="1600" height="250" page="fore" visible="true"]
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
[ptext name="chara_name_area" layer="message0" color="white" size="28" bold="true" x="180" y="810"]
[chara_config ptext="chara_name_area"]
[screen_full]

;----------------------
*debug
;----------------------

[bg storage="debug.jpg" time="100"]
[cm]

; ボタン
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png" target="*backtitle" x="1680" y="40"]
[button graphic="debug/flagdetail.png" target="*flagdetail" x="1450" y="960"]
[button graphic="debug/save.png" target="*save" x="1680" y="960"]

; ゲーム変数_Episode1
[edit name="f.isEpisode1Clear" initial="0" left="400" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isStageStatusGreen" initial="0" left="400" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isLightStatusGreen" initial="0" left="400" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isSpeakerStatusGreen" initial="0" left="400" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isCableGet" initial="0" left="400" top="555" color="0x666666" size="36" width="150" maxchars="2"]
[edit name="f.isLightCoverGet" initial="0" left="400" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[edit name="f.isDriverGet" initial="0" left="400" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isMikeGet" initial="0" left="400" top="730" color="0x666666" size="36" width="150" maxchars="1"]

; ゲーム変数_Episode2
[edit name="f.isEpisode2Clear" initial="0" left="1010" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isTentDown" initial="0" left="1010" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isDressGet" initial="0" left="1010" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isHungerGet" initial="0" left="1010" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isPaperDown" initial="0" left="1010" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isPencilGet" initial="0" left="1010" top="610" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isRedBlockGet" initial="0" left="1010" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isBlueBlockGet" initial="0" left="1010" top="730" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isYellowBlockGet" initial="0" left="1010" top="785" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isKeyOpen" initial="0" left="1010" top="845" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isCurtainGet" initial="0" left="1010" top="900" color="0x666666" size="36" width="150" maxchars="1"]

; ゲーム変数_Episode3
[edit name="f.isEpisode3Clear" initial="0" left="1600" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isFutonGet" initial="0" left="1600" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isCompassGet" initial="0" left="1600" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isJumperGet" initial="0" left="1600" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isJutanOpen" initial="0" left="1600" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[edit name="f.isRoomLightNight" initial="0" left="1600" top="610" color="0x666666" size="36" width="150" maxchars="1"]
[s]

;----------------------
*flagdetail
;----------------------

;Notionの「フラグ一覧」ページを開く
[web url="https://www.notion.so/shinya30/8a2e9e554d9d4a8ebea9cc950fb3ca44?v=cc8efcf2a18c4d5db87e5b1abaaf00ec&pvs=4"]
[s]

;----------------------
*save
;----------------------

; ゲーム変数格納_Episode1
[commit name="f.isEpisode1Clear"]
[commit name="f.isStageStatusGreen"]
[commit name="f.isLightStatusGreen"]
[commit name="f.isSpeakerStatusGreen"]
[commit name="f.isCableGet"]
[commit name="f.isLightCoverGet"]
[commit name="f.isDriverGet"]
[commit name="f.isMikeGet"]

; ゲーム変数格納_Episode2
[commit name="f.isEpisode2Clear"]
[commit name="f.isTentDown"]
[commit name="f.isDressGet"]
[commit name="f.isHungerGet"]
[commit name="f.isPaperDown"]
[commit name="f.isPencilGet"]
[commit name="f.isRedBlockGet"]
[commit name="f.isBlueBlockGet"]
[commit name="f.isYellowBlockGet"]
[commit name="f.isKeyOpen"]
[commit name="f.isCurtainGet"]

; ゲーム変数格納_Episode3
[commit name="f.isEpisode3Clear"]
[commit name="f.isFutonGet"]
[commit name="f.isCompassGet"]
[commit name="f.isJumperGet"]
[commit name="f.isJutanOpen"]
[commit name="f.isRoomLightNight"]

; バリデーション_Episode1
[if exp="(f.isEpisode1Clear != 0" || exp="f.isEpisode1Clear != 1)"]
[jump target="*debug"]
[elsif exp="(f.isStageStatusGreen != 0" || exp="f.isStageStatusGreen != 1)"]
[jump target="*debug"]
[elsif exp="(f.isLightStatusGreen != 0" || exp="f.isLightStatusGreen != 1)"]
[jump target="*debug"]
[elsif exp="(f.isSpeakerStatusGreen != 0" || exp="f.isSpeakerStatusGreen != 1)"]
[jump target="*debug"]
[elsif exp="(f.isCableGet != 0" || exp="f.isCableGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isLightCoverGet != 0" || exp="f.isLightCoverGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isDriverGet != 0" || exp="f.isDriverGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isMikeGet != 0" || exp="f.isMikeGet != 1)"]
[jump target="*debug"]

; バリデーション_Episode2
[elsif exp="(f.isEpisode2Clear != 0" || exp="f.isEpisode2Clear != 1)"]
[jump target="*debug"]
[elsif exp="(f.isTentDown != 0" || exp="f.isTentDown != 1)"]
[jump target="*debug"]
[elsif exp="(f.isDressGet != 0" || exp="f.isDressGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isHungerGet != 0" || exp="f.isHungerGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isPaperDown != 0" || exp="f.isPaperDown != 1)"]
[jump target="*debug"]
[elsif exp="(f.isPencilGet != 0" || exp="f.isPencilGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isRedBlockGet != 0" || exp="f.isRedBlockGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isBlueBlockGet != 0" || exp="f.isBlueBlockGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isYellowBlockGet != 0" || exp="f.isYellowBlockGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isKeyOpen != 0" || exp="f.isKeyOpen != 1)"]
[jump target="*debug"]
[elsif exp="(f.isCurtainGet != 0" || exp="f.isCurtainGet != 1)"]
[jump target="*debug"]

; バリデーション_Episode3
[elsif exp="(f.isEpisode3Clear != 0" || exp="f.isEpisode3Clear != 1)"]
[jump target="*debug"]
[elsif exp="(f.isFutonGet != 0" || exp="f.isFutonGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isCompassGet != 0" || exp="f.isCompassGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isJumperGet != 0" || exp="f.isJumperGet != 1)"]
[jump target="*debug"]
[elsif exp="(f.isJutanOpen != 0" || exp="f.isJutanOpen != 1)"]
[jump target="*debug"]
[elsif exp="(f.isRoomLightNight != 0" || exp="f.isRoomLightNight != 1)"]
[jump target="*debug"]

[else]
[jump target="*backtitle"]
[endif]

[s]

;----------------------
*backtitle
;----------------------

[cm]
[freeimage layer="1"]
@jump storage=title.ks