simpleScroll
============

This is my first JS programming.

simpleScrollとは

scrollUPした時のみヘッダーを表示する、
スマートホンのブラウザバーのようなものです。
とある点(target)をすぎたところから発火させる事ができます。
またthroughを指定してあげる事によって、
そのtargetからどれくらいはなれた場所でheaderアクションを発火させるかを指定する事ができます。
css,jsファイルを読込んで、以下のスクリプトをhtmlファイルに記述して下さい。

    <script>
    $(function(){
      var test = new simpleScroll({header: '#header', target: '#target', through: 250});
      $(window).on('load resize scroll', test.onScroll);
    });
    </script>


テスト

    <a href="http://tanisi.sakura.ne.jp/samples/SimpleScroll/">demo</a>