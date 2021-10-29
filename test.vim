"新しい floating window を開いて、そのウィンドウにフォーカスを移す。

" 第２引数が v:true になっているのでフォーカスが移ります。

call nvim_open_win(bufnr(''), v:true, {'relative': 'cursor', 'height': 3, 'width': 10, 'row': 1, 'col': 1})

" Hoge を定義（黄色地に黒文字になります）

hi Hoge guifg=#2e3440 guibg=#ebcb8b

" Hoge をデフォルトのハイライトにする（Normal の代わりに使う）。

set winhighlight=Normal:Hoge
