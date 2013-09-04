setf global変数への代入
* (setf *variable_name* value)
defparameter *variable_name* 大域変数の変更
* 初期値の設定が必要
* 値がない場合は同時に定義する
* アスタリスクで変数名を囲むのはsyntax ruleではなくコーディングスタンダード
* ちなみにいあーまふと呼ぶ
defvar 変数値の定義
* 初期値の設定は不要
* lisperの中には変数定義はdefparameterよりこちらの方が好きな人もいる
* 既存の変数値の変更は行えないから?

let local変数・関数の定義
* (let (variable_name value)
        body...)
* (let ((a 5) (b 7))
        (+ a b))

labels local関数低
* fletとの違い : fletは同名関数がglobalにある場合再帰呼び出しをしようとするとglobalな関数を参照してしまう。labelsであれば自分自身を参照する

* globalな関数があってもスコープ内であればこちらが呼ばれる

flet local関数定義
* (flet ((関数定義){, (関数定義2) (関数定義3) ...})
        ( 使用 )
    )
* (flet ((first_func_name(arguments)
            function_body)
        (second_func_name(arguments) ;;; second function is options
             function_body)
        (threed_func_name(arguments)
            function_body)
        threed_func_name ( second_func_name (first_func_name num) )
        );;;fletリスト内でしか使えない;;;

* (flet (
       (plus_five (num)
            (+ num 5))
       (plus_ten (num)
            (+ num 10))
       (plus_one_hundred (num)
            (+ num 100))
       )
    ( plus_one_hundred (plus_ten (plus_five 8)))
)

defun define function

ash 数値を指定した数だけビット移動っさせる
* (ash 5 1) -> 0000 0101 -> 0000 1010
* (ash(5 -1)) -> 0000 0101 -> 0000 0101
* あくまで2進数の移動なので現在の値の2のx乗した数になると考えればいい
* なお移動できない分、たとえば(ash 1 1)などとした場合は切り捨てが発生する



guess number
1 プレイヤーが1~100までの範囲一つの整数を選択する
2 コンピュータは範囲内の数値を言う
3 プレイヤーはその値が自分の選択した値より大きいか、小さいかをこたえる
4 コンピュータは3の答えにより、範囲を狭める.たとえばユーザーが大きいと答えれば自身の中の数の範囲下限を、2で答えた値に変更する
4 loop 2 ~ 4

(guess_my_number)
(smaller)
(bigger)

create a global variable max or min


lispでは明示的なreturnは不要で、関数内での最終的な値が戻り値となる
