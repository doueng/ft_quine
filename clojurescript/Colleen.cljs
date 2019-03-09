(defn rofl [])
(defn main []
  (let [r "(defn rofl [])
(defn main []
  (let [r 5]
    (rofl)
    (print
     (clojure.string.replace-first
      r
      (str 5)
      (apply str
             (char 34)
             r
             (char 34))))))
(main)
"]
    (rofl)
    (print
     (clojure.string.replace-first
      r
      (str 5)
      (apply str
             (char 34)
             r
             (char 34))))))
(main)
