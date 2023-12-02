*start
[cm]
[clearfix]
[start_keyconfig]

[bg storage="kari/omoide1_introduction.jpg" time="100"]
[screen_full]

@showmenubutton

; メッセージウィンドウの設定
[position layer="message0" left="160" top="800" width="1600" height="250" page="fore" visible="true"]

; 文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]

; キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size="28" bold="true" x="180" y="810"]

; 上記で定義した領域がキャラクターの名前表示であることを宣言
[chara_config ptext="chara_name_area"]

; 登場するキャラクターを設定
;[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"]
;[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと"]

; キャラクターの表情登録
;[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
;[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
;[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
;[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]

;マクロの読み込み
[messageTrue]

#思い出1導入
ステージの隅にあるコンセントと抜けたプラグを差し直す[p]

#思い出1導入
電源が入り、あかりが一部復旧する[p]

*StageRoom
[messageFalse]
; 背景
[if exp="f.isStageStatusGreen == 0 && f.isLightStatusGreen == 0"]
  [bg storage="episode1/stageroom.png" time="100"]
[elsif exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 0 && f.isDriverGet == 0"]
  [bg storage="episode1/stageroom_stagerise_withdriver.png" time="100"]
[elsif exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 0 && f.isDriverGet == 1"]
  [bg storage="episode1/stageroom_stagerise_driverget.png" time="100"]
[elsif exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isCableGet == -1"]
  [bg storage="episode1/stageroom_lightcoverattachment.png" time="100"]
[endif]

; クリック判定
; 制御盤
[clickable x="30" y="635" width="120" height="120" target="*ControlPanel" opacity="30" mouseopacity="50" color="0x505050"]
; 配線扉
[if exp="f.isStageStatusGreen == 0"]
  [clickable x="1570" y="770" width="100" height="50" target="*WiringDoor" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; 道具箱
[if exp="f.isCableGet == 0"]
  [clickable x="1700" y="610" width="200" height="200" target="*ToolBox" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ドライバー
[if exp="f.isStageStatusGreen == 1 && f.isDriverGet == 0""]
  [clickable x="770" y="410" width="150" height="100" target="*GetDriver" vopacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ライト
[if exp="f.isLightStatusGreen == 0"]
  [clickable x="620" y="180" width="100" height="100" target="*SearchLight" opacity="30" mouseopacity="50" color="0x505050"]
[endif]
; ライトカバー
[if exp="f.isLightCoverGet == 0"]
  [clickable x="620" y="790" width="100" height="100" target="*GetLightCover" opacity="30" mouseopacity="50" color="0x505050"]
[endif]

; アイテム欄
[layer1True]
[eval exp="tf.UsingitemInventory1 = 0"]
[eval exp="tf.UsingitemInventory2 = 0"]
[eval exp="tf.UsingitemInventory3 = 0"]
[eval exp="tf.UsingitemInventory4 = 0"]
[eval exp="tf.UsingitemInventory5 = 0"]
[eval exp="tf.UsingitemInventory6 = 0"]
[eval exp="tf.UsingitemInventory7 = 0"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="25"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="100"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="175"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="250"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="325"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="400"]
[image storage="../image/kari/inventory.png" layer="1" x="1770" y="475"]

; アイテム画像
[layer2True]
[if exp="f.isCableGet == 1"]
  [eval exp="tf.UsingitemInventory1 = 1"]
  [image storage="../image/kari/cable.png" layer="2" x="1770" y="25" visible="true" name="cable"]
[endif]
[if exp="f.isDriverGet == 1"]
  [eval exp="tf.UsingitemInventory2 = 1"]
  [image storage="../image/kari/driver.png" layer="2" x="1770" y="100" visible="true" name="driver"]
[endif]
[if exp="f.isLightCoverGet == 1"]
  [eval exp="tf.UsingitemInventory3 = 1"]
  [image storage="../image/kari/lightcover.png" layer="2" x="1770" y="175" visible="true" name="lightcover"]
[endif]
[s]

*ControlPanel
[bg storage="episode1/controlpane_allred.png" time="100"]
; 素材未完成のため、一時的な処理
[layer3True]
[if exp="f.isStageStatusGreen == 1"]
  [ptext layer="3" x="1190" y="80" size="40" text="「舞台」は緑に変更済み" color="0x4caf50"]
[endif]
[if exp="f.isLightStatusGreen == 1"]
  [ptext layer="3" x="1190" y="280" size="40" text="「ライト」は緑に変更済み" color="0x4caf50"]
[endif]

[clickable x="460" y="725" width="360" height="240" target="*ControlPanel_Decision" opacity="30" mouseopacity="50" color="0x505050"]
[clickable x="910" y="1015" width="100" height="50" target="*ControlPanel_back" opacity="30" mouseopacity="50" color="0x505050"]
[s]

*ControlPanel_Decision
[if exp="f.isStageStatusGreen == 1 && f.isLightStatusGreen == 1 && f.isSpeakerStatusGreen == 1"]
  [messageTrue]
  #
  クリア後の処理[p]
  [jump target="*StageRoom"]
[else]
  [messageTrue]
  #
  この3つを何とかしないといけない[p]
  [layer3False]
  [jump target="*StageRoom"]
[endif]

*ControlPanel_back
[layer3False]
[jump target="*StageRoom"]

*WiringDoor
[bg storage="episode1/disconnectedwiring.png" time="100"]
[clickable x="760" y="380" width="350" height="150" target="*WiringDoor_Decision" opacity="30" mouseopacity="50" color="0x505050"]
[clickable x="910" y="1015" width="100" height="50" target="*WiringDoor_back" opacity="30" mouseopacity="50" color="0x505050"]
[s]

*WiringDoor_Decision
[if exp="f.isCableGet == 0"]
  [messageTrue]
  #
  修理をしないといけないね[p]
  [jump target="*StageRoom"]
[else]
  [messageTrue]
  #
  あの配線を使えばいいんじゃない？[p]
  *SelectItemOfCable
  [messageFalse]
  [if exp="tf.UsingitemInventory1 == 1"]
    [clickable x="1770" y="25" width="70"  height="70"  target="*UseCable" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory2 == 1"]
    [clickable x="1770" y="100" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory3 == 1"]
    [clickable x="1770" y="175" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory4 == 1"]
    [clickable x="1770" y="250" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory5 == 1"]
    [clickable x="1770" y="325" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory6 == 1"]
    [clickable x="1770" y="400" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory7 == 1"]
    [clickable x="1770" y="475" width="70"  height="70"  target="*NotUseCable" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [clickable x="910" y="1015" width="100" height="50" target="*WiringDoor_back" opacity="30" mouseopacity="50" color="0x505050"]
  [s]
[endif]

*UseCable
[messageTrue]
#
このアイテムを使用しますか？
[glink color="btn_29_red" target="*ValidItemOfCable" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfCable" width="200" x="550" y="930" text="いいえ"]
[s]

*NotUseCable
[messageTrue]
#
このアイテムを使用しますか？
[glink color="btn_29_red" target="*IncorrectItemOfCable" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfCable" width="200" x="550" y="930" text="いいえ"]
[s]

*WiringDoor_back
[jump target="*StageRoom"]

*ValidItemOfCable
[eval exp="f.isCableGet = -1"]
[free layer="2" name="cable"]
#
先ほど手に入れた配線でちぎれた配線を直す[p]
[bg storage="episode1/connectedwiring.png" time="100"]
; 舞台がせり上がる効果音
[eval exp="f.isStageStatusGreen = 1"]
; 制御盤の「舞台」の欄が緑になったことを知らせる効果音
#
クリアしたね[p]
[jump target="*StageRoom"]

*IncorrectItemOfCable
#
このアイテムは違うようだ。[p]
[jump target="*SelectItemOfCable"]

*ToolBox
[if exp="tf.leftNum != 4 && tf.centerNum != 5 && tf.rightNum != 6"]
  [bg storage="episode1/dial.png" time="100"]
  [clickable x="910" y="1015" width="100" height="50" target="*ToolBox_back" opacity="30" mouseopacity="50" color="0x505050"]
  [button graphic="../image/kari/dialnumber_0.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 0" fix="true" target="*LeftDialTurn"]
  [button graphic="../image/kari/dialnumber_0.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 0" fix="true" target="*CenterDialTurn"]
  [button graphic="../image/kari/dialnumber_0.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 0" fix="true" target="*RightDialTurn"]
[else]
  [call target="*DialUnlock"]
[endif]
[s]

*ToolBox_back
[iscript]
    delete tf.leftNum;
    delete tf.centerNum;
    delete tf.rightNum;
[endscript]
[clearfix]
[jump target="*StageRoom"]

*LeftDialTurn
[if exp="tf.leftNum == 0"]
  [eval exp="tf.leftNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 1" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 1"]
  [eval exp="tf.leftNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 2" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 2"]
  [eval exp="tf.leftNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 3" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 3"]
  [eval exp="tf.leftNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 4" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 4"]
  [eval exp="tf.leftNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 5" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 5"]
  [eval exp="tf.leftNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 6" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 6"]
  [eval exp="tf.leftNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 7" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 7"]
  [eval exp="tf.leftNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 8" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 8"]
  [eval exp="tf.leftNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 9" fix="true" target="*LeftDialTurn"]
[elsif exp="tf.leftNum == 9"]
  [eval exp="tf.leftNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="520" y="480" width="200" height="200" exp="tf.leftNum = 0" fix="true" target="*LeftDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*CenterDialTurn
[if exp="tf.centerNum == 0"]
  [eval exp="tf.centerNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 1" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 1"]
  [eval exp="tf.centerNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 2" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 2"]
  [eval exp="tf.centerNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 3" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 3"]
  [eval exp="tf.centerNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 4" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 4"]
  [eval exp="tf.centerNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 5" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 5"]
  [eval exp="tf.centerNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 6" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 6"]
  [eval exp="tf.centerNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 7" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 7"]
  [eval exp="tf.centerNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 8" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 8"]
  [eval exp="tf.centerNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 9" fix="true" target="*CenterDialTurn"]
[elsif exp="tf.centerNum == 9"]
  [eval exp="tf.centerNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="845" y="480" width="200" height="200" exp="tf.centerNum = 0" fix="true" target="*CenterDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*RightDialTurn
[if exp="tf.rightNum == 0"]
  [eval exp="tf.rightNum = 1"]
  [button graphic="../image/kari/dialnumber_1.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 1" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 1"]
  [eval exp="tf.rightNum = 2"]
  [button graphic="../image/kari/dialnumber_2.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 2" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 2"]
  [eval exp="tf.rightNum = 3"]
  [button graphic="../image/kari/dialnumber_3.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 3" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 3"]
  [eval exp="tf.rightNum = 4"]
  [button graphic="../image/kari/dialnumber_4.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 4" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 4"]
  [eval exp="tf.rightNum = 5"]
  [button graphic="../image/kari/dialnumber_5.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 5" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 5"]
  [eval exp="tf.rightNum = 6"]
  [button graphic="../image/kari/dialnumber_6.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 6" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 6"]
  [eval exp="tf.rightNum = 7"]
  [button graphic="../image/kari/dialnumber_7.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 7" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 7"]
  [eval exp="tf.rightNum = 8"]
  [button graphic="../image/kari/dialnumber_8.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 8" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 8"]
  [eval exp="tf.rightNum = 9"]
  [button graphic="../image/kari/dialnumber_9.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 9" fix="true" target="*RightDialTurn"]
[elsif exp="tf.rightNum == 9"]
  [eval exp="tf.rightNum = 0"]
  [button graphic="../image/kari/dialnumber_0.png" x="1180" y="480" width="200" height="200" exp="tf.rightNum = 0" fix="true" target="*RightDialTurn"]
[endif]

[call target="*DialUnlock"]
[return]

*DialUnlock
[if exp="tf.leftNum == 4 && tf.centerNum == 5 && tf.rightNum == 6"]
  [clearfix]
  [bg storage="episode1/cable.png" time="100"]
  [clickable x="820" y="390" width="300" height="300" target="*GetCable" opacity="30" mouseopacity="50" color="0x505050"]
  [clickable x="910" y="1015" width="100" height="50" target="*DialUnlock_back" opacity="30" mouseopacity="50" color="0x505050"]
[endif]

[return]

*GetCable
[iscript]
    delete tf.leftNum;
    delete tf.centerNum;
    delete tf.rightNum;
[endscript]
[eval exp="f.isCableGet = 1"]
[jump target="*StageRoom"]

*DialUnlock_back
[clearfix]
[jump target="*StageRoom"]

*GetDriver
[eval exp="f.isDriverGet = 1"]
[jump target="*StageRoom"]

*SearchLight
[if exp="tf.tempUseLightCover == 1"]
  [eval exp="f.isLightCoverGet = -1"]
  [free layer="2" name="lightcover"]
  [messageTrue]
  #
  先ほど手に入れたライトカバーをライトにはめる[p]
  [bg storage="episode1/stageroom_lightcoverattachment.png" time="100"]
  [eval exp="f.isLightStatusGreen = 1"]
  ; 制御盤の「照明」の欄が緑になったことを知らせる効果音
  #
  クリアしたね[p]
  [iscript]
    delete tf.tempUseLightCover;
  [endscript]
  [jump target="*StageRoom"]
[elsif exp="tf.tempUseLightCover == -1"]
  [messageTrue]
  #
  このアイテムは違うようだ。[p]
  [eval exp="tf.tempUseLightCover = 0"]
  [jump target="*SelectItemOfLightCover"]
[elsif exp="f.isStageStatusGreen == 0"]
  [messageTrue]
  #
  高すぎて調べられないね[p]
  [jump target="*StageRoom"]
[elsif exp="f.isStageStatusGreen == 1"]
  [messageTrue]
  #
  舞台が上がったおかげで調べられるね！[p]
  *SelectItemOfLightCover
  [messageFalse]
  [if exp="tf.UsingitemInventory1 == 1"]
    [clickable x="1770" y="25" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory2 == 1"]
    [clickable x="1770" y="100" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory3 == 1"]
    [clickable x="1770" y="175" width="70"  height="70"  target="*UseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory4 == 1"]
    [clickable x="1770" y="250" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory5 == 1"]
    [clickable x="1770" y="325" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory6 == 1"]
    [clickable x="1770" y="400" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [if exp="tf.UsingitemInventory7 == 1"]
    [clickable x="1770" y="475" width="70"  height="70"  target="*NotUseLightCover" opacity="30" mouseopacity="50" color="0x505050"]
  [endif]
  [jump target="*StageRoom"]
[endif]

*UseLightCover
[messageTrue]
#
このアイテムを使用しますか？
[glink color="btn_29_red" target="*ValidItemOfLightCover" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfLightCover" width="200" x="550" y="930" text="いいえ"]
[s]

*NotUseLightCover
[messageTrue]
#
このアイテムを使用しますか？
[glink color="btn_29_red" target="*IncorrectItemOfLightCover" width="200" x="250" y="930" text="はい"]
[glink color="btn_29_blue" target="*SelectItemOfLightCover" width="200" x="550" y="930" text="いいえ"]
[s]

*ValidItemOfLightCover
[eval exp="tf.tempUseLightCover = 1"]
[jump target="*StageRoom"]

*IncorrectItemOfLightCover
[eval exp="tf.tempUseLightCover = -1"]
[jump target="*StageRoom"]

*GetLightCover
[eval exp="f.isLightCoverGet = 1"]
[jump target="*StageRoom"]