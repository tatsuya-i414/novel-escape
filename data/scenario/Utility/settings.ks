; メッセージウィンドウの設定
[position layer="message0" left="160" top="800" width="1600" height="250" page="fore" visible="true"]

; 文字が表示される領域を調整
[position layer="message0" page="fore" margint="45" marginl="50" marginr="70" marginb="60"]

; キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size="28" bold="true" x="180" y="810"]

; 上記で定義した領域がキャラクターの名前表示であることを宣言
[chara_config ptext="chara_name_area"]

; 登場するキャラクターを設定
[chara_new name="sakura" storage="chara/sakura/normal.png" jname="桜良"]
[chara_new name="miyuki" storage="chara/miyuki/normal.png" jname="深雪"]

; キャラクターの表情登録
;[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]

[return]