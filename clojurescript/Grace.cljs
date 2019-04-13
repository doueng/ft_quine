(require 'fs)
;; comment
(def s "(require 'fs)
;; comment
(def s 686)
(def FT (fs/writeFileSync 6Grace_kid.cljs6
                  (reduce
                   #(str %1
                       (cond
                         (= %2 (str (+ 3 3))) (str (char 34))
                         (= %2 (str (+ 4 4))) s
                         :else %2))
                   (str)
                   s)))
FT
")
(def FT (fs/writeFileSync "Grace_kid.cljs"
                  (reduce
                   #(str %1
                       (cond
                         (= %2 (str (+ 3 3))) (str (char 34))
                         (= %2 (str (+ 4 4))) s
                         :else %2))
                   (str)
                   s)))
FT
