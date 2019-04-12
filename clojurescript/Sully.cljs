(require 'fs)

(def s "(require 'fs)

(def s 686)
(def exec (.-exec (js/require 6child_process6)))
(def curr_filename
  (apply str
         (reverse
          (take-while #(not= %1 (char (+ 45 2))) (reverse js/__filename)))))
(def i 7)
(def n (- i (if (not= curr_filename 6Sully.cljs6) 1 0)))
(def new_filename (str 6Sully_6 n 6.cljs6))
(def new_bin (str 6Sully_6 n))

(defn write_to_file [filename]
  (fs/writeFileSync filename
                         (reduce
                          #(+ %1
                              (cond
                                (= %2 (str (+ 3 3))) (str (char 34))
                                (= %2 (str (+ 4 4))) s
                                (= %2 (str (- 9 2))) n
                                :else %2))
                          (str)
                          s)))

(and (> i 0)
     (do
       (write_to_file new_filename)
       (write_to_file new_bin)
       (exec (str 6lumo 6 new_filename))))
")
(def exec (.-exec (js/require "child_process")))
(def curr_filename
  (apply str
         (reverse
          (take-while #(not= %1 (char (+ 45 2))) (reverse js/__filename)))))
(def i 5)
(def n (- i (if (not= curr_filename "Sully.cljs") 1 0)))
(def new_filename (str "Sully_" n ".cljs"))
(def new_bin (str "Sully_" n))

(defn write_to_file [filename]
  (fs/writeFileSync filename
                         (reduce
                          #(+ %1
                              (cond
                                (= %2 (str (+ 3 3))) (str (char 34))
                                (= %2 (str (+ 4 4))) s
                                (= %2 (str (- 9 2))) n
                                :else %2))
                          (str)
                          s)))
(and (> i 0)
     (do
       (write_to_file new_filename)
       (write_to_file new_bin)
       (exec (str "lumo " new_filename))))
