(ns main
  (:require
    [clojure.java.io :as io]
    [clojure.edn :as edn]
    [clojure.pprint :refer [pprint]]
    ))

(defn -main
  [& args]
  (println "Hello world!")
  (println (pr-str args)))

(defn deploy
  [m]
  (let [{:keys [host verbose]} m]
    (when verbose
      (println "Config used:" (pr-str m)))
    (println "Deploying to:" host)))

(defn print-basis
  [_m]
  (-> (System/getProperty "clojure.basis")
      (io/file)
      slurp
      (edn/read-string)
      pprint))
