技術MTG 2015-09-28  

<br />

<div class='slide-title'>最近ウワサの言語 *Elixir* の紹介</div>
<br />
Satoshi UENO


-----
<div class='page-title'>Agenda</div>
  
1. Elixirとは
2. Elixirのウワサ
3. Elixirの世界
4. ErlangのVM「BEAM」
5. ツールやライブラリ達


-----
<div class='page-title'>Agenda</div>
  
1. **Elixirとは**
2. Elixirのウワサ
3. Elixirの世界
4. ErlangのVM「BEAM」
5. ツールやライブラリ達



--
<div class="page-title">Elixirとは</div>
<div class="content-lefty">
|> ErlangのVM上で動く関数型言語  
|> Erlangのいいところをそのまま
<p class="lank-2">|> 並行処理</p>
<p class="lank-2">|> 高可用性</p>
|> Rubyライクのシンタックス  
|> RoRのコミッターが作者 (José Valim)  
|> 最近PhoenixというWebフレームワークで話題に
</div>


--
<div class="page-title">Erlangって??</div>
<div class="content-lefty">
|> Ericssonが1980年代に開発した言語(Ericsson Language)  
|> 並行処理指向の関数型言語  
|> 元々電話用アプリケーションのための言語  
<p class="lank-2">|> 耐障害性</p>
<p class="lank-2">|> 常時稼働性</p>
<p class="lank-2">|> ある程度のリアルタイム性</p>
<p class="lank-2">|> ホットスワッピング</p>
</div>


--
<div class="page-title">Erlangの実用例</div>
<div class="content-lefty">
|> 電話交換機システム  
|> 何億人も利用するチャットアプリ
<p class="lank-2">|> Facebookのチャット</p>
<p class="lank-2">|> Whatsapp</p>

|> 何百万人とプレイするゲームのサーバ  
<p class="lank-2">|> Call of Duty</p>
<p class="lank-2">|> Game of War</p>
</div>


--
<div class="page-title">あまり使われない？</div>
<div class="content-lefty">
|> C, Java, PHPなどに慣れている人には抵抗が・・・  
|> 流行りの言語に比べていけてない部分も・・・  
<p class="lank-2">|> パッケージマネジメント</p>
<p class="lank-2">|> フレームワーク</p>
<p class="lank-2">|> ビルドツール</p>
<p class="lank-2">|> メタプログラミング</p>
|> モダンなプログラミングじゃない・・・
</div>


--
<div class="page-title">**Elixir**が解決！</div>
-  Rubyライクシンタックス  
-  パッケージ管理"Hex"  
-  Webフレームワーク"Phoenix"  
-  CLIツール"Mix"  
-  強力なマクロ
-  その他モダンな言語機能
<img src="img/elixir_logo.jpg" alt="Elixirロゴ" style="position: absolute; top: 2em; left: -4em; width: 300px;">
<!--img src="img/elixir_logo.jpg" alt="Elixirロゴ" style="position: absolute; top: -1.70em; left: 17em; width: 300px;" -->


-----
<div class='page-title'>Agenda</div>
  
1. ~~Elixirとは~~
2. **Elixirのウワサ**
3. Elixirの世界
4. ErlangのVM「BEAM」
5. ツールやライブラリ達


--
<div class="page-title">Elixirのウワサ</div>
<br />
<div class="content-lefty">
|> マイクロ秒単位のレスポンス  
|> 実サービスで使用した例  
|> ダウンタイムなしでのソフトウェア更新  
|> リアルタイム通信が得意
</div>


--
<div class="highlight-content">ホントかよ・・・</div>
<div class="large-content">Σ( ﾟДﾟ) ｽｯ､ｽｹﾞｰ!!</div>


--
<div class="page-title">マイクロ秒？</div>
<br />
<div class="content-lefty">
|> 実際はいろいろなベンチマーク結果が・・・  
<p class="lank-2">|> [ベンチマーク情報1(43063.45 req/sec)](https://github.com/mroth/phoenix-showdown#comparative-benchmark-numbers)</p>
<p class="lank-2">|> [ベンチマーク情報2(1308.79 req/sec)](http://qiita.com/xtity/items/969eefb83fcac9023542)</p>
<p class="lank-2">|> [ベンチマーク情報3(4175 req/sec)](http://qiita.com/ohr486/items/a6bf071f1fe26f5108ab)</p>
|> 環境や条件が結構違う・・・  
|> とはいえ結構速い模様  
</div>


--
<div class="page-title">導入事例？</div>
<br />
<div class="content-lefty">
|> Erlangに比べてElixirはまだ発展途上  
|> まずはWebAPIとしての導入に期待  
|> 実例として[ドリコムが広告ネットワークのAPIで使用](http://www.slideshare.net/ohr486/shibuyaex-1-elixir?related=6)
<p class="lank-2">|> Railsから移植</p>
<p class="lank-2">|> やはりErlangの知識は</p>
<p class="lank-2" style="text-indent: 80px;">必要らしい・・・</p>
<br />
<iframe src="//www.slideshare.net/slideshow/embed_code/key/EmUX8O7KV4448z" width="425" height="355" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%; position: absolute; top: 8em; left: 13em;" allowfullscreen> </iframe>
</div>


--
<div class="page-title">ダウンタイムなし？</div>
<br />
<div class="content-lefty">
|> ElixirじゃなくVMのいいところでした・・・mm  
|> VMがいい感じにプロセスを監視して再起動  
|> コードのホットスワップが可能  
<p class="lank-2" style="text-indent: 80px;">=> サービスを止めずにソフトウェアを更新</p>
</div>


--
<div class="page-title">リアルタイム通信？</div>
<br />
<div class="content-lefty">
<p class="lank-2">|> 正常系を考えるだけでいい</p>
<p class="lank-2">|> プロセス間通信をメッセージとパターンマッチで</p>
<p class="lank-2">|> 同一ノードと遠隔ノードのプロセスを同様に扱う</p>
<p class="lank-2">|> Shared Nothing Architecture</p>
<p class="lank-2">|> Phoenixを使うことで更に・・・！</p>
</div>


--
<p class="large-content">そんなことはいいから</p>
<p class="large-content">コードはよ</p>
　 ﾊﾞﾝ　　　はよ  
ﾊﾞﾝ (∩｀･ω･) ﾊﾞﾝ はよ  
　　/ ﾐつ　/￣￣￣/  
　￣￣＼/＿＿＿/



-----
<div class='page-title'>Agenda</div>
  
1. ~~Elixirとは~~
2. ~~Elixirのウワサ~~
3. **Elixirの世界**
4. ErlangのVM「BEAM」
5. ツールやライブラリ達


--
<div class="highlight-content">先にコードから</div>


--
<div class="page-title">先にコードから</div>
<div class="content-lefty">
サルでも知ってるFizzBuzzを例に
<pre><code class="php">
for ($i = 1; $i <= 20; $i++) {
    if ($i % 15 === 0) {
        echo "FizzBuzz" . PHP_EOL;
    } elseif ($i % 5 === 0) {
        echo "Buzz" . PHP_EOL;
    } elseif ($i % 3 === 0) {
        echo "Fizz" . PHP_EOL;
    } else {
        echo (string)$i . PHP_EOL;
    }
}
</code></pre>
<div class="large-content">PHPならこう</div>


--
<div class="page-title">先にコードから</div>
<div class="content-lefty">
サルでも知ってるFizzBuzzを例に
<pre><code class="php">
$results = array_map(function($value) {
    if ($value % 15 === 0) return "FizzBuzz";
    if ($value % 5 === 0) return "Buzz";
    if ($value % 3 === 0) return "Fizz";

    return (string)$value;
}, range(1, 20));

foreach ($results as $result) {
    echo $result . PHP_EOL;
}
</code></pre>
<div class="large-content">もしくはこう</div>


--
<div class="highlight-content">そして</div>


--
<div class="page-title">先にコードから</div>
<div class="content-lefty">
サルでも知ってるFizzBuzzを例に
<pre><code class="elixir">
defmodule Fizzbuzz do
  def fizzbuzz(from, to) when is_integer(from) and is_integer(to) do
    from..to |> Enum.map(&(fizzbuzz/1))
  end
  def fizzbuzz(_from, _to), do: raise "invalid argument"
  defp fizzbuzz(num) when rem(num, 15) == 0, do: "FizzBuzz"
  defp fizzbuzz(num) when rem(num, 5) == 0, do: "Buzz"
  defp fizzbuzz(num) when rem(num, 3) == 0, do: "Fizz"
  defp fizzbuzz(num), do: to_string(num)
end

Fizzbuzz.fizzbuzz(1, 20) |> Enum.each(&IO.puts/1)
</code></pre>
<div class="large-content">これが *Elixir*</div>
</div>


--
<!--div class="large-content">まじか(ﾟДﾟ;)</div-->
<div class="large-content">なにこれステキ(ﾟ∀ﾟ)</div>


--
<div class="page-title">他言語と比較</div>

<div class="content-lefty">
</div>

||PHP|Ruby|Java|Elixir|
|:-:|:-:|:-:|:-:|:-:|
|コンパイル|なし|なし|ある|**どちらも可**|
|マクロ|なし|なし|なし|**ある**|
|型付け|動的|動的|静的|動的|
|UnitTest|PHPUnit|RSpec|JUnit|ExUnit|
|名前空間|namespace|Module|Package|Module|
|クラス|ある|ある|ある|**なし**|
|ループ|for,foreach|each,times|for,while|**なし**|
|遅延評価|なし|lazy|StreamAPI|Stream|


--
<div class="page-title">もうちょっと特徴</div>
<div class="content-lefty">
|> 関数型言語としての特徴
<p class="lank-2">|> 束縛や処理による値の不変性</p>
<p class="lank-2">|> マクロとパターンマッチによる制御構造</p>
<p class="lank-2">|> 便利すぎる内包表記</p>
|> Elixir固有の特徴
<p class="lank-2">|> ファーストクラスドキュメント</p>
<p class="lank-2">|> マクロとパイプ演算子</p>
<p class="lank-2">|> バイナリデータ操作の自由度</p>
</div>


--
<div class="page-title">もうちょっと特徴</div>
<div class="wrap">
<div class="left">
<div class="content-lefty">
|> 束縛？
<pre><code class="elixir">
x = 1 # => 1 普通
1 = x # => 1 代入ではなく束縛なのでOK
</code></pre>
|> パターンマッチ？
<pre><code class="elixir">
{a, b, c} = {:hello, "world", 100}
a # => :hello
b # => "world"
c # => 100
</code></pre>
|> パイプ演算子？
<pre><code class="elixir">
[1,2,3] |> Enum.each(&IO.puts/1)
</code></pre>
</div>
</div>

<div class="right">
<div class="content-lefty">
|> ファーストクラスドキュメント？
<pre><code class="elixir">
defmodule M1 do
    @doc """
    ドキュメントコンテンツ
    """
end
</code></pre>
|> バイナリデータ？
<pre><code class="elixir">
<<1>> <> <<2, 3, 4>> # => <<1, 2, 3, 4>>
</code></pre>
|> 内包表記？
<pre><code class="elixir">
for x <- Enumerable なソース, [条件,..] do: 加工
for x <- [1, 2, 3], do: 2 * x # => [2, 4, 6]
</code></pre>
</div>
</div>
</div>


--
<div class="page-title">コーディングの感想</div>
<div class="wrap">
</div>

##### 簡単な処理を難しく、難しい処理を簡単に

<div class="content-lefty">
|> 標準出力のフォーマット指定がErlangで意味不明
<pre><code class="elixir">
:io.format "~3..0B~n", [10]
010
</code></pre>
|> クイックソートが超絶簡単
<pre><code class="elixir">
defmodule Sort do
    def qsort([]), do: []
    def qsort([pivot | rest]) do
        qsort(for x <- rest, x < pivot, do: x) ++ [pivot] ++ qsort(for y <- rest, y > pivot, do: y)
    end
end

IO.inspect Sort.qsort(list)
</code></pre>
</div>



-----
<div class='page-title'>Agenda</div>
  
1. ~~Elixirとは~~
2. ~~Elixirのウワサ~~
3. ~~Elixirの世界~~
4. **ErlangのVM「BEAM」**
5. ツールやライブラリ達


--
<div class="page-title">BEAM</div>
<div class="content-lefty">
|> Erlangで使用されるJVMに並ぶ優秀なVM
<p class="lank-2">|> 超軽量プロセス</p>
<p class="lank-2">|> 高速なプロセス起動(1μ)</p>
<p class="lank-2">|> マルチコア対応のスケジューラ</p>
<p class="lank-2">|> ホットスワップ</p>
<p class="lank-2">|> Fault-Tolerantに重点</p>
</div>


--
<div class="page-title">BEAM</div>
<div class="content-lefty">
|> ElixirもこのVM上で動作  
|> Elixirのいいところの半分はこいつの恩恵  
<p class="lank-2">|> VMの監視プロセスがダウンしたプロセスを再起動</p>
<p class="lank-2">|> ErlangもElixirも同様の実行ファイル</p>
<p class="lank-2">|> 実績のあるErlangのエコシステムを利用可能</p>
<p class="lank-2" style="text-indent: 70px;">（シームレスにErlangの関数をコール）</p>
</div>


--
#### 思想的には
<br />
<div class="large-content">クラッシュさせちまえ</div>
<br />
#### がモットーらしい


--
<div class="highlight-content">
[詳しくはWebで](http://search.yahoo.co.jp/search;_ylt=A7dPCy5qYAJWYFkAB_iJBtF7?p=erlang+beam&search.x=1&fr=top_ga1_sa&tid=top_ga1_sa&ei=UTF-8&aq=&oq=&afs=)
</div>


-----
<div class='page-title'>Agenda</div>
  
1. ~~Elixirとは~~
2. ~~Elixirのウワサ~~
3. ~~Elixirの世界~~
4. ~~ErlangのVM「BEAM」~~
5. **ツールやライブラリ達**


--
<div class="highlight-content">iEx</div>


--
<div class='page-title'>iEx</div>
<div class="content-lefty">
|> REPL  
|> デフォルトでElixirに付属  
|> 作成しているプロジェクトのソースを読み込み可能  
|> モジュールや関数のドキュメントを参照可能  
</div>
<br />
<pre><code class="elixir">
$ iex
iex(1)> h Enum
Enum モジュールのドキュメント・・・
iex(2)> h Enum.map
Enum.map 関数のドキュメント・・・
</code></pre>


--
<div class="highlight-content">Mix</div>


--
<div class='page-title'>Mix</div>
<div class="wrap"></div>
<div class="highlight-content">Elixirにおける  
CLIビルドツール</div>


--
<div class='page-title'>Mix</div>
<div class="wrap">
作成 + コンパイル + アプリケーションのテスト + 依存関係の管理
</div>
<div class="content-lefty">
|> デフォルトでElixirに付属  
|> PHP: composer + artisan(Laravel)  or oil(FuelPHP)  
|> Ruby: bundler + rake  
|> Java, Scala: Maven, Gradle  
|> JavaScript: npm or bower + gulp or grunt  
</div>


--
<div class='page-title'>Mix</div>
<div class="wrap">
<div class="large-content">
雰囲気だけ・・・
</div>
<div class="left">
<div class="content-lefty">
|> 作成
<pre><code class="bash">
$ mix new PJネーム
</code></pre>
|> コンパイル
<pre><code class="bash">
$ mix compile
</code></pre>
|> 依存パッケージ導入
<pre><code class="bash">
$ mix deps.get
</code></pre>
</div>
</div>

<div class="right">
<div class="content-lefty">
|> プロジェクト内REPL
<pre><code class="bash">
$ iex -S mix
</code></pre>
|> テスト実行
<pre><code class="bash">
$ mix test
</code></pre>
</div>
</div>
</div>


--
<div class="highlight-content">ExUnit</div>


--
<div class='page-title'>ExUnit</div>
<div class="content-lefty">
|> ユニットテストフレームワーク  
|> よくある\*UnitのElixirバージョン  
|> デフォルトでElixirに付属  
|> だいたいほかの\*Unitと一緒
<p class="lank-2">|> 最初からMixと連携</p>
</div>


--
<div class='page-title'>ExUnit</div>
<div class="wrap"></div>
<br />
##### "ドキュメントがファーストクラスオブジェクト"
<div class="content-lefty">
|> ドキュメントにUnitテストを書ける！
</div>
<pre><code class="elixir">
defmodule Fizzbuzz do
  @doc """
  モジュールの説明・・・

  # Unitテストケース1
  iex> Fizzbuzz.fizzbuzz(1, 5)
  [1, 2, "Fizz", 4, "Buzz"]

  """
</code></pre>



--
<div class="highlight-content">Phoenix</div>


--
<div class='page-title'>Phoenix</div>
<div class="content-lefty">
|> Elixirで一番注目されているWebFW  
|> Railsにインスパイアされて作成  
<p class="lank-2">|> 当然MVC</p>
<p class="lank-2">|> ElixirとErlangのデファクトツール群で構成</p>
<p class="lank-2">|> 標準でWebSocketを装備</p>
|> そこそこ速いらしい
<p class="lank-2">|> 多言語のフレームワーク等とベンチマークされてる</p>
</div>
<img src="img/phoenix_logo.png" alt="Phoenixロゴ" style="position: absolute; top: -1.70em; left: 17em; width: 300px;">


--
<div class='page-title'>Phoenix</div>
<div class="wrap">
</div>

-  Cowboy: ErlangのデファクトHTTPサーバ
-  Plug: HTTP送受信モジュール
-  Ecto: DBラッパー統合DSL
-  EEx: テンプレートエンジン

<div class="larger-content">単体で使えるツール群で構成</div>


--
<div class='page-title'>Phoenix</div>
<div class="content-lefty">
|> デフォルトでフルスタックとしての機能は充実  
<p class="lank-2">|> WebSocketやDBマイグレーション機能</p>
<p class="lank-2">|> フロント環境も付属(アセットパイプライン, Babel...)</p>
<p class="lank-2">|> よく分かってなくても動くものを作りやすい</p>
|> 学習コストが高い・・・
<p class="lank-2">|> ErlangとElixirとPhoenixの知識が必要・・・</p>
<p class="lank-2">|> やってる人がまだまだ少ない・・・</p>
<p class="lank-2">|> 日本語ドキュメント少ない・・・</p>
</div>


--
<div class='page-title'>今後に期待！</div>
<div class="content-lefty">
<br />
|> Erlang自体も最近注目度が上がっている  
|> 当然Elixirにも今後さらに注目が集まる予感  
|> 関数型言語への入門にもちょうどいい  
|> 耐障害性バンザイ！
</div>


--
<div class="highlight-content">お疲れさまでした</div>
