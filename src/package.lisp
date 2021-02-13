(defpackage :sysexits
  (:use :cl)

  (:export
    #:+ok+
    #:+usage+
    #:+dataerr+
    #:+noinput+
    #:+nouser+
    #:+nohost+
    #:+unavailable+
    #:+software+
    #:+oserr+
    #:+osfile+
    #:+cantcreat+
    #:+ioerr+
    #:+tempfail+
    #:+protocol+
    #:+noperm+
    #:+config+))
