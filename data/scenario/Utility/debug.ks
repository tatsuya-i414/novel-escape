[clearfix]
[messageFalse]
[hidemenubutton]
[freeimage layer="0" page="back"]
[cm]

; メッセージウインドウとキャラクター情報の読み込み
[if exp="sf.isLoadSetting == 'false' "]
  [call storage="Utility/settings.ks"]
  [eval exp="sf.isLoadSetting = 'true' "]
[endif]

*debug
[bg storage="debug.jpg" time="100"]
[screen_full]

; ボタン
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png" target="*backtitle" x="1680" y="40"]
[button graphic="debug/flagdetail.png" target="*flagdetail" x="1380" y="960"]
[glink color="rosy" target="*save" text="保存" x="1610" y="960" width="50" height="24" size="24" bold="true"]

; ゲーム変数_Episode1
[if exp="f.isEpisode1Clear == 0"]
    [edit name="f.isEpisode1Clear" initial="0" left="400" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isEpisode1Clear" initial="&f.isEpisode1Clear" left="400" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isStageStatusGreen == 0"]
    [edit name="f.isStageStatusGreen" initial="0" left="400" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isStageStatusGreen" initial="&f.isStageStatusGreen" left="400" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isLightStatusGreen == 0"]
    [edit name="f.isLightStatusGreen" initial="0" left="400" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isLightStatusGreen" initial="&f.isLightStatusGreen" left="400" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isSpeakerStatusGreen == 0"]
    [edit name="f.isSpeakerStatusGreen" initial="0" left="400" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isSpeakerStatusGreen" initial="&f.isSpeakerStatusGreen" left="400" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isCableGet == 0"]
    [edit name="f.isCableGet" initial="0" left="400" top="555" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isCableGet" initial="&f.isCableGet" left="400" top="555" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isLightCoverGet == 0"]
    [edit name="f.isLightCoverGet" initial="0" left="400" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isLightCoverGet" initial="&f.isLightCoverGet" left="400" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isDriverGet == 0"]
    [edit name="f.isDriverGet" initial="0" left="400" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isDriverGet" initial="&f.isDriverGet" left="400" top="670" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isMikeGet == 0"]
    [edit name="f.isMikeGet" initial="0" left="400" top="730" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isMikeGet" initial="&f.isMikeGet" left="400" top="730" color="0x666666" size="36" width="150" maxchars="1"]
[endif]

; ゲーム変数_Episode2
[if exp="f.isEpisode2Clear == 0"]
    [edit name="f.isEpisode2Clear" initial="0" left="1010" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isEpisode2Clear" initial="&f.isEpisode2Clear" left="1010" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isTentDown == 0"]
    [edit name="f.isTentDown" initial="0" left="1010" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isTentDown" initial="&f.isTentDown" left="1010" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isDressGet == 0"]
    [edit name="f.isDressGet" initial="0" left="1010" top="445" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isDressGet" initial="&f.isDressGet" left="1010" top="445" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isHungerGet == 0"]
    [edit name="f.isHungerGet" initial="0" left="1010" top="500" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isHungerGet" initial="&f.isHungerGet" left="1010" top="500" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isPaperDown == 0"]
    [edit name="f.isPaperDown" initial="0" left="1010" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isPaperDown" initial="&f.isPaperDown" left="1010" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isPencilGet == 0"]
    [edit name="f.isPencilGet" initial="0" left="1010" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isPencilGet" initial="&f.isPencilGet" left="1010" top="610" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isRedBlockGet == 0"]
    [edit name="f.isRedBlockGet" initial="0" left="1010" top="670" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isRedBlockGet" initial="&f.isRedBlockGet" left="1010" top="670" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isBlueBlockGet == 0"]
    [edit name="f.isBlueBlockGet" initial="0" left="1010" top="730" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isBlueBlockGet" initial="&f.isBlueBlockGet" left="1010" top="730" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isGreenBlockGet == 0"]
    [edit name="f.isGreenBlockGet" initial="0" left="1010" top="785" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isGreenBlockGet" initial="&f.isGreenBlockGet" left="1010" top="785" color="0x666666" size="36" width="150" maxchars="2"]
[endif]
[if exp="f.isKeyOpen == 0"]
    [edit name="f.isKeyOpen" initial="0" left="1010" top="845" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isKeyOpen" initial="&f.isKeyOpen" left="1010" top="845" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isCurtainGet == 0"]
    [edit name="f.isCurtainGet" initial="0" left="1010" top="900" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isCurtainGet" initial="&f.isCurtainGet" left="1010" top="900" color="0x666666" size="36" width="150" maxchars="2"]
[endif]

; ゲーム変数_Episode3
[if exp="f.isEpisode3Clear == 0"]
    [edit name="f.isEpisode3Clear" initial="0" left="1600" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isEpisode3Clear" initial="&f.isEpisode3Clear" left="1600" top="265" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isFutonGet == 0"]
    [edit name="f.isFutonGet" initial="0" left="1600" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isFutonGet" initial="&f.isFutonGet" left="1600" top="385" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isCompassGet == 0"]
    [edit name="f.isCompassGet" initial="0" left="1600" top="445" color="0x666666" size="36" width="150" maxchars="2"]
[else]
    [edit name="f.isCompassGet" initial="&f.isCompassGet" left="1600" top="445" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isJumperGet == 0"]
    [edit name="f.isJumperGet" initial="0" left="1600" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isJumperGet" initial="&f.isJumperGet" left="1600" top="500" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isJutanOpen == 0"]
    [edit name="f.isJutanOpen" initial="0" left="1600" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isJutanOpen" initial="&f.isJutanOpen" left="1600" top="555" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[if exp="f.isRoomLightNight == 0"]
    [edit name="f.isRoomLightNight" initial="0" left="1600" top="610" color="0x666666" size="36" width="150" maxchars="1"]
[else]
    [edit name="f.isRoomLightNight" initial="&f.isRoomLightNight" left="1600" top="610" color="0x666666" size="36" width="150" maxchars="1"]
[endif]
[s]

*flagdetail
;Notionの「フラグ一覧」ページを開く
[web url="https://www.notion.so/shinya30/8a2e9e554d9d4a8ebea9cc950fb3ca44?v=cc8efcf2a18c4d5db87e5b1abaaf00ec&pvs=4"]
[s]

*save
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
[commit name="f.isGreenBlockGet"]
[commit name="f.isKeyOpen"]
[commit name="f.isCurtainGet"]

; ゲーム変数格納_Episode3
[commit name="f.isEpisode3Clear"]
[commit name="f.isFutonGet"]
[commit name="f.isCompassGet"]
[commit name="f.isJumperGet"]
[commit name="f.isJutanOpen"]
[commit name="f.isRoomLightNight"]

; フラグの値に応じて値を変更する
; 思い出1をクリアする
[if exp="f.isEpisode1Clear == 1"]
    [eval exp="f.isStageStatusGreen = 1"]
    [eval exp="f.isLightStatusGreen = 1"]
    [eval exp="f.isSpeakerStatusGreen = 1"]
    [eval exp="f.isCableGet = -1"]
    [eval exp="f.isLightCoverGet = -1"]
    [eval exp="f.isDriverGet = 1"]
    [eval exp="f.isMikeGet = 1"]
[endif]

; ステージがせり上がる
[if exp="f.isStageStatusGreen == 1"]
    [eval exp="f.isCableGet = -1"]
[endif]

; ライトカバーを装着する
[if exp="f.isLightStatusGreen == 1"]
    [eval exp="f.isStageStatusGreen = 1"]
    [eval exp="f.isCableGet = -1"]
    [eval exp="f.isLightCoverGet = -1"]
[endif]

; スピーカーの傾きを直す
[if exp="f.isSpeakerStatusGreen == 1"]
    [eval exp="f.isStageStatusGreen = 1"]
    [eval exp="f.isCableGet = -1"]
    [eval exp="f.isDriverGet = 1"]
[endif]

; 天幕を下ろす
[if exp="f.isTentDown == 1"]
    [eval exp="f.isEpisode1Clear = 1"]
    [eval exp="f.isStageStatusGreen = 1"]
    [eval exp="f.isLightStatusGreen = 1"]
    [eval exp="f.isSpeakerStatusGreen = 1"]
    [eval exp="f.isCableGet = -1"]
    [eval exp="f.isLightCoverGet = -1"]
    [eval exp="f.isDriverGet = 1"]
    [eval exp="f.isMikeGet = 1"]
    [eval exp="f.isHungerGet = -1"]
    [eval exp="f.isPaperDown = 1"]
[endif]

; アイブロウペンシルを獲得する
[if exp="f.isPencilGet == -1"]
    [eval exp="f.isEpisode1Clear = 1"]
    [eval exp="f.isStageStatusGreen = 1"]
    [eval exp="f.isLightStatusGreen = 1"]
    [eval exp="f.isSpeakerStatusGreen = 1"]
    [eval exp="f.isCableGet = -1"]
    [eval exp="f.isLightCoverGet = -1"]
    [eval exp="f.isDriverGet = 1"]
    [eval exp="f.isMikeGet = 1"]
    [eval exp="f.isTentDown = 1"]
    [eval exp="f.isHungerGet = -1"]
    [eval exp="f.isPaperDown = 1"]
[endif]

; タンスの開錠をする
[if exp="f.isKeyOpen == 1"]
    [eval exp="f.isEpisode1Clear = 1"]
    [eval exp="f.isStageStatusGreen = 1"]
    [eval exp="f.isLightStatusGreen = 1"]
    [eval exp="f.isSpeakerStatusGreen = 1"]
    [eval exp="f.isCableGet = -1"]
    [eval exp="f.isLightCoverGet = -1"]
    [eval exp="f.isDriverGet = 1"]
    [eval exp="f.isMikeGet = 1"]
    [eval exp="f.isRedBlockGet = -1"]
    [eval exp="f.isBlueBlockGet = -1"]
    [eval exp="f.isGreenBlockGet = -1"]
    [eval exp="f.isHungerGet = 1"]
[endif]

; 思い出2をクリアする
[if exp="f.isEpisode2Clear == 1"]
    [eval exp="f.isEpisode1Clear = 1"]
    [eval exp="f.isStageStatusGreen = 1"]
    [eval exp="f.isLightStatusGreen = 1"]
    [eval exp="f.isSpeakerStatusGreen = 1"]
    [eval exp="f.isCableGet = -1"]
    [eval exp="f.isLightCoverGet = -1"]
    [eval exp="f.isDriverGet = 1"]
    [eval exp="f.isMikeGet = 1"]
    [eval exp="f.isTentDown = 1"]
    [eval exp="f.isDressGet = -1"]
    [eval exp="f.isHungerGet = -1"]
    [eval exp="f.isPaperDown = 1"]
    [eval exp="f.isPencilGet = -1"]
    [eval exp="f.isRedBlockGet = -1"]
    [eval exp="f.isBlueBlockGet = -1"]
    [eval exp="f.isGreenBlockGet = -1"]
    [eval exp="f.isKeyOpen = 1"]
    [eval exp="f.isCurtainGet = -1"]
[endif]
[jump storage="title.ks"]
[s]

*backtitle
[cm]
[freeimage layer="1"]
[jump storage="title.ks"]