(require 'fs)

(def s "(require 'fs)

(def s 686)
(def MAIN (fs/writeFileSync 6Grace_kid.cljs6
                  (reduce
                   #(+ %1
                       (cond
                         (= %2 (str (+ 3 3))) (str (char 34))
                         (= %2 (str (+ 4 4))) s
                         :else %2))
                   (str)
                   s)))
MAIN
")
(def MAIN (fs/writeFileSync "Grace_kid.cljs"
                  (reduce
                   #(+ %1
                       (cond
                         (= %2 (str (+ 3 3))) (str (char 34))
                         (= %2 (str (+ 4 4))) s
                         :else %2))
                   (str)
                   s)))
MAIN
