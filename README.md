What's this?
=============

This repository has some dictionaries for [neocomplete.vim](https://github.com/Shougo/neocomplete.vim).



![1454671166](https://cloud.githubusercontent.com/assets/4361134/12844935/d2e9cf02-cc45-11e5-9ba5-c637342bf63f.png)

Installation and Usage
==============

Clone this repository.

```sh
$ git clone https://github.com/pocke/dicts /path/to/any/dir/for/dicts
```

And add the following code into `.vimrc`.


```vim
let s:neco_dicts_dir = '/path/to/any/dir/for/dicts'
if isdirectory(s:neco_dicts_dir)
  let g:neocomplete#sources#dictionary#dictionaries = {
  \   'ruby': s:neco_dicts_dir . '/ruby.dict',
  \   'javascript': s:neco_dicts_dir . '/jquery.dict',
  \ }
endif
```

Dictionaries
================

ruby.dict
-----------

### source

https://github.com/rurema/doctree

### license

るりまのライセンスが Creative Commons の Attribution 3.0 Unportedなので、それに従います。

http://creativecommons.org/licenses/by/3.0/

上記のソースが`scripts/ruby.rb`によって変更されています。


jquery.dict
------------

### source

https://github.com/jquery/api.jquery.com

### license

ソースのライセンスに従います。

https://github.com/jquery/api.jquery.com/blob/master/LICENSE.txt




Scripts
============

`scripts/`下のスクリプトは、全てNYSLとします。

http://www.kmonos.net/nysl/

http://www.kmonos.net/nysl/index.en.html

```
A. 本ソフトウェアは Everyone'sWare です。このソフトを手にした一人一人が、
   ご自分の作ったものを扱うのと同じように、自由に利用することが出来ます。

  A-1. フリーウェアです。作者からは使用料等を要求しません。
  A-2. 有料無料や媒体の如何を問わず、自由に転載・再配布できます。
  A-3. いかなる種類の 改変・他プログラムでの利用 を行っても構いません。
  A-4. 変更したものや部分的に使用したものは、あなたのものになります。
       公開する場合は、あなたの名前の下で行って下さい。

B. このソフトを利用することによって生じた損害等について、作者は
   責任を負わないものとします。各自の責任においてご利用下さい。

C. 著作者人格権は pocke に帰属します。著作権は放棄します。

D. 以上の３項は、ソース・実行バイナリの双方に適用されます。
```
