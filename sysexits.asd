(asdf:defsystem sysexits
  :description "Exit codes defined in sysexits.h"
  :version "0.1.0"

  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "sysexits")))))
