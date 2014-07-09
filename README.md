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
追記：
  イベントで発火させるようにしました。


【イベント一覧】

    scrolluptodown: target以降で、上から下にスクロール
    scrolldowntoup: target以降で、下から上にスクロール
    beforetargetexisitng: target以前でheaderが存在するとき
    beforetargetnone: target以前でheaderが存在しないとき

【メソッド一覧】

    hideHeader: ヘッダーを表示する
    showHeader: ヘッダーを非表示にする　

【htmlに記述するscriptの例】

    <script>
    $(function(){
      var test = new SimpleScroll({header: '#header', target: '#target', through: 250, position: 'bottom'});
      $(window).on('load resize scroll', test.onScroll);
      $(window).on('scrolluptodown', function(){
        test.hideHeader();
      });
      $(window).on('scrolldowntoup', function(){
        test.showHeader();
      });
      $(window).on('beforetargetexisting', function(){
        test.hideHeader();
      });
    });
    </script>


スクロールしていくとある、緑線を超えた任意の位置で上スクロールをしてみてください。
<a href="http://tanisi.sakura.ne.jp/samples/SimpleScroll/">demoページ</a>