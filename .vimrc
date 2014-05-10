scriptencoding utf-8

"bundle.vimでのpluginを読み込む
source ~/dotfiles/.vimrc.bundle

"ノーマルモードでマウスを使えるようにする
set mouse=n
"vimの処理タイミングを制御
set updatetime=180

"クリップボード連携"
set clipboard=unnamed

"File関連{"
set autoread
set hidden
set noswapfile
set nobackup
autocmd BufWritePre * :%s/\s\+$//ge   "保存時に行末の空白を除去する
"}

"表示関連{
set list "不可視文字の可視化
set number "行番号表示
set wrap "長いテキストの折り返し
set textwidth=0 "自動的に改行が入るのを無効化
"デフォルト不可視文字をUnicodeで綺麗に
set listchars=tab:\ \ ,trail:-,extends:»,precedes:«,nbsp:%,eol:↲

"カラースキーム"
set background=light
colorscheme desert

"エンコーディング"
set encoding=utf-8
set fileencoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,latin,utf-8 "文字コード自動認識
set fileformats=unix,dos,mac "改行コードの自動認識

set wildmenu "コマンドライン補完を便利に

"オートインデント{"
set expandtab
set ts=2 sw=2 sts=2
set autoindent
set smartindent
set ruler
"}}

"vim-indent-guides関連{
let g:indent_guides_enable_on_vim_startup=1
hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_guide_size =2
"行頭行末の左右移動で行をまたぐ{
set backspace=start,eol,indent
set whichwrap=b,s,h,l,<,>,[,]
"}

"検索関連{
set smartcase
set incsearch
"}}

"NERDTree関連{
let NERDTreeShowHidden=1 "隠しファイルを表示
"}

"jedi.vim関連{
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
 endif
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
"}

"VimShell関連{
let g:vimshell_popup_height=40
let g:vimshell_split_command='tabnew'
let g:my_vimshell_prompt_counter=-1
function! s:my_vimshell_dynamic_prompt()
		let g:my_vimshell_prompt_counter+=1
	  let anim=[
        \        "|卍♪└(┐✌^o^)✌|",
        \        "|卍^o^)♪└(┐✌^|",
        \        "|└(┐卍^o^)卍♪|",
        \        "| 卍♪└(┐卍^o^|",
        \        "|卍^o^)卍♪└(┐|",
        \        "|└(┐卍^o^)卍♪|",
        \        "|三^o^))└(┐卍|",
        \        "|o^)✌~三^o^))|",
        \        "|┐✌^o^)✌~三^o|",
        \    ]
	  return anim[g:my_vimshell_prompt_counter % len(anim)]
endfunction
let g:vimshell_prompt_expr='g:my_vimshell_dynamic_prompt()." > "'
let g:vimshell_prompt_pattern='^|[ 卍♪└(┐✌o^)~三]\{10,11}| > '
"}

"neocomplete.vim関連{
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=3
let g:neocomplete#lock_buffer_name_pattern='¥*ku¥*'
"neocomplete key mappings{
inoremap <expr><C-g> neocomplete#undo_completion()
inoremap <expr><C-l> neocomplete#complete_common_string()
"}}

"lightline関連{
set laststatus=2
set t_Co=256 "環境によって上手くいかないのでシェルコマンド'export TERM=xterm-256color'と併用
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"🔒":""}',
      \ },
      \ 'separator': { 'left': '＞', 'right': '＜' },
      \ 'subseparator': { 'left': '＞', 'right': '＜' }
      \ }
"}

"calendar.vim関連{
let g:calendar_google_calendar=1
let g:calendar_goole_task=1
"}
"

"Java関連{
let g:java_highlight_all=1
let g:java_highlight_debug=1
let g:java_allow_cpp_keywords=1
let g:java_space_errors=1
let g:java_highlight_functions=1
"}
