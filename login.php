<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ログインページ</title>
    <link rel="stylesheet" href="style.css" />
    <link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet"> 

</head>
<body>
    <div id="wrap">
        <div id="head">
            <h1>なんちゃらニュースマガジン</h1>
        </div>
        <div id="content">
            <div id="lead">
                <p>IDとパスワードを記入してログインしてください。</p>
                <p>登録がまだの方はこちらからどうぞ。</p>
                <p>&raquo;<a href=" ">登録をする</a></p>
            </div>
            <form action="login_act.php" method="post">
                <dl>
                    <dt>お名前</dt>
                    <dd>
                        <input type="text" name="email" size="35" maxlength="255">
                    </dd>
                    <dt>パスワード</dt>
                    <dd>
                        <input type="password" name="password" size="35" maxlength="255">
                    </dd>
                </dl>
                <div><input type="submit" value="ログインする" /></div>
            </form>
        </div>
    </div>
</body>
</html>