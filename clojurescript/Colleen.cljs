(defn rofl [])
;; hello
(defn -main []
  (let [r "(defn rofl [])
;; hello
(defn -main []
  (let [r 5]
    (rofl)
    ;; hi
    (print
     (clojure.string.replace-first
      r
      (str 5)
      (apply str
             (char 34)
             r
             (char 34))))))
(-main)
"]
    (rofl)
    ;; hi
    (print
     (clojure.string.replace-first
      r
      (str 5)
      (apply str
             (char 34)
             r
             (char 34))))))
(-main)
