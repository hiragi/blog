#language: ja
機能:一覧表示

    背景:
      前提 次の"doc"レコードがある
       |title|content|
       |hello|world|

    シナリオ:一覧表示
      もし "/"ページを表示する
      ならば "Reporter"と表示されていること
      ならば "Reportする"と表示されていること
      もし "/welcome/post"ページを表示する
      ならば "ツイート"と表示されていること
      もし "/welcome/login"ページを表示する
      ならば "Username"と表示されていること
