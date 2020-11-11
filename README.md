# Basic usage

```
./clojure -X clojure.core/prn :foo :bar :baz 1
```

# Defined namespace aliases

```
./clojure -X:core prn :foo :bar
./clojure -X:core pprint/pprint :foo :bar
./clojure -X:core core/prn :foo :bar
./clojure -X:core prn :foo :bar :baz [1,2,3] :key '"string"'
```

# Parametrizing a function

```
./clojure -X:deploy-to-prod
./clojure -X:deploy-to-qa
./clojure -X:deploy-to:prod
./clojure -X:deploy-to:prod :verbose true
./clojure -X:deploy-to:qa :verbose true
./clojure -X:deploy-to:qa :verbose true :host just-this-once.super-cool.com
```

# Example: starting a development REPL

```
./clojure -X:repl
./clojure -X:repl :prepl false
./clojure -X:repl :refresh true
./clojure -X:repl :refresh true :start-ns main
./clojure -X:repl:nate
```

# Basis

```
./clojure -X main/basis
./clojure -X:deploy-to:prod main/basis | bat --language clojure
./clojure -X:repl main/basis
./clojure -X:repl main/basis | bat --language clojure
```
