(in-package :asdf-user)

(defsystem "dc"
  :description "tcc dc based code"
  :version "0.0.1"
  :author "Raphael Santos <contact@raphaelss.com>"
  :license "MIT License"
  :components ((:file "lilytemplates")
               (:file "note" :depends-on ("lilytemplates"))
               (:file "instruments")
               (:file "line"
                      :depends-on ("lilytemplates" "instruments" "note"))
               (:file "music" :depends-on ("note"))
               (:file "score" :depends-on ("lilytemplates" "line"))
               (:file "disscounter")
               (:file "tcc" :depends-on ("score" "music" "disscounter"))))
