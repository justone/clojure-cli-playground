
./clojure -X clojure.core/prn :foo :bar :baz 1


 8  clojure -X:deploy-to:prod
 9  ./clojure-1.10.1.727 -X:deploy-to
10  ./clojure-1.10.1.727 -X:deploy-to:qa
11  ./clojure-1.10.1.727 -X:deploy-to:prod
12  ./clojure-1.10.1.727 -X:deploy-to:prod :foo :bar
13  ./clojure-1.10.1.727 -X:deploy-to:prod :url '"the other ting"'
19  clojure -X main/basis
21  ./clojure -X main/basis
22  ./clojure -X main/basis | jbc
23  ./clojure -X:deploy-to:prod main/basis | jbc
25  ./clojure -X clojure.core/prn :foo :bar :baz 1
26  ./clojure -X clojure.core/prn
27  ./clojure -Xcore prn
28  ./clojure -X:core prn
29  ./clojure -X:core prn :foo :bar
30  ./clojure -X:core2 pprint/pprint :foo :bar
31  ./clojure -X:core2 core/prn :foo :bar
32  ./clojure -X:core pprint :foo :bar
33  ./clojure -X:core prn :foo :bar :baz [1 2 3
34  ./clojure -X:core prn :foo :bar :baz [1 2 3]
35  ./clojure -X:core prn :foo :bar :baz [1,2,3]
36  ./clojure -X:core prn :foo :bar :baz [1,2,3] :key '"string"'
37  ./clojure -X:deploy-to:prod
39  ./clojure -X:deploy-to:prod :verbose true
40  ./clojure -X:deploy-to:qa :verbose true
41  ./clojure -X:deploy-to:qa :verbose true :host just-this-once.super-cool.com
42  ./clojure -X:repl
43  ./clojure -X:repl :prepl false
45  ./clojure -X:repl main/basis
46  ./clojure -X:repl main/basis | bat --language clojure
48  ./clojure -P -X:repl main/basis
49  ./clojure -Sdescribe -X:repl main/basis
51  ./clojure -Stree -X:repl main/basis
52  ./clojure -X:repl :refresh true
53  ./clojure -X:repl :refresh true :start-ns main
56  history | rg "\-X"
57  history | rg "\-X" | rc
