-module(bech32).
-export([]).
-include_lib("eunit/include/eunit.hrl").

-include("bech32.hrl").


-type charset() :: $0 | $2 | $3 | $4 | $5 | $6 | $7 | $8 | $9 | $a
                 | $c | $d | $e | $f | $g | $h | $j | $k | $l | $m
                 | $n | $p | $q | $r | $s | $t | $u | $v | $w | $x
                 | $y | $z.

-type charset_index() :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10
                       | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19
                       | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28
                       | 29 | 30 | 31.


-spec index_to_charset(Index) -> Char when
      Index :: charset_index(),
      Char :: charset().

index_to_charset(0)  -> $q;
index_to_charset(1)  -> $p;
index_to_charset(2)  -> $z;
index_to_charset(3)  -> $r;
index_to_charset(4)  -> $y;
index_to_charset(5)  -> $9;
index_to_charset(6)  -> $x;
index_to_charset(7)  -> $8;
index_to_charset(8)  -> $g;
index_to_charset(9)  -> $f;
index_to_charset(10) -> $2;
index_to_charset(11) -> $t;
index_to_charset(12) -> $v;
index_to_charset(13) -> $d;
index_to_charset(14) -> $w;
index_to_charset(15) -> $0;
index_to_charset(16) -> $s;
index_to_charset(17) -> $3;
index_to_charset(18) -> $j;
index_to_charset(19) -> $n;
index_to_charset(20) -> $5;
index_to_charset(21) -> $4;
index_to_charset(22) -> $k;
index_to_charset(23) -> $h;
index_to_charset(24) -> $c;
index_to_charset(25) -> $e;
index_to_charset(26) -> $6;
index_to_charset(27) -> $m;
index_to_charset(28) -> $u;
index_to_charset(29) -> $a;
index_to_charset(30) -> $7;
index_to_charset(31) -> $l.


-spec charset_to_index(Char) -> Index when
      Char :: charset(),
      Index :: charset_index().

charset_to_index($q) -> 0;
charset_to_index($p) -> 1;
charset_to_index($z) -> 2;
charset_to_index($r) -> 3;
charset_to_index($y) -> 4;
charset_to_index($9) -> 5;
charset_to_index($x) -> 6;
charset_to_index($8) -> 7;
charset_to_index($g) -> 8;
charset_to_index($f) -> 9;
charset_to_index($2) -> 10;
charset_to_index($t) -> 11;
charset_to_index($v) -> 12;
charset_to_index($d) -> 13;
charset_to_index($w) -> 14;
charset_to_index($0) -> 15;
charset_to_index($s) -> 16;
charset_to_index($3) -> 17;
charset_to_index($j) -> 18;
charset_to_index($n) -> 19;
charset_to_index($5) -> 20;
charset_to_index($4) -> 21;
charset_to_index($k) -> 22;
charset_to_index($h) -> 23;
charset_to_index($c) -> 24;
charset_to_index($e) -> 25;
charset_to_index($6) -> 26;
charset_to_index($m) -> 27;
charset_to_index($u) -> 28;
charset_to_index($a) -> 29;
charset_to_index($7) -> 30;
charset_to_index($l) -> 31.
