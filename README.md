simpleScroll
============

This is my first JS programming.

simpleScrollとは

scrollUPした時のみヘッダーを表示する、
スマートホンのブラウザバーのようなものです。
とある点(target)をすぎたところから発火させる事ができます。
またthroughを指定してあげる事によって、
そのtargetからどれくらいはなれた場所でheaderアクションを発火させるかを指定する事ができます。
position 'top' か 'bottom'で上かしたどちらにバーを表示するか選べるようになりました。
css,jsファイルを読込んで、以下のスクリプトをhtmlファイルに記述して下さい。

    <script>
    $(function(){
      var test = new SimpleScroll({header: '#header', target: '#target', through: 250, position: 'bottom'});
      $(window).on('load resize scroll', test.onScroll);
    });
    </script>


スクロールしていくとある、緑線を超えた任意の位置で上スクロールをしてみてください。
<a href="http://tanisi.sakura.ne.jp/samples/SimpleScroll/">demoページ</a>