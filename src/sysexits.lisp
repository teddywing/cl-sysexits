;;; Copyright (c) 2021  Teddy Wing
;;; Copyright (c) 1987, 1993
;;;	The Regents of the University of California.  All rights reserved.
;;;
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:
;;; 1. Redistributions of source code must retain the above copyright
;;;    notice, this list of conditions and the following disclaimer.
;;; 2. Redistributions in binary form must reproduce the above copyright
;;;    notice, this list of conditions and the following disclaimer in the
;;;    documentation and/or other materials provided with the distribution.
;;; 3. Neither the name of the University nor the names of its contributors
;;;    may be used to endorse or promote products derived from this software
;;;    without specific prior written permission.
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
;;; ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
;;; FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
;;; OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;;; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
;;; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
;;; OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
;;; SUCH DAMAGE.
;;;
;;;	@(#)sysexits.h	8.1 (Berkeley) 6/2/93

(in-package :sysexits)

(defconstant +ok+ 0
  "Successful termination.")

(defconstant +usage+ 64
  "The command was used incorrectly, e.g., with the wrong number of arguments,
a bad flag, a bad syntax in a parameter, or whatever.")

(defconstant +dataerr+ 65
  "The input data was incorrect in some way. This should only be used for
user's data & not system files.")

(defconstant +noinput+ 66
  "An input file (not a system file) did not exist or was not readable. This
could also include errors like \"No message\" to a mailer (if it cared to catch
it).")

(defconstant +nouser+ 67
  "The user specified did not exist. This might be used for mail addresses or
remote logins.")

(defconstant +nohost+ 68
  "The host specified did not exist. This is used in mail addresses or network
requests.")

(defconstant +unavailable+ 69
  "A service is unavailable. This can occur if a support program or file does
not exist. This can also be used as a catchall message when something you
wanted to do doesn't work, but you don't know why.")

(defconstant +software+ 70
  "An internal software error has been detected. This should be limited to
non-operating system related errors as possible.")

(defconstant +oserr+ 71
  "An operating system error has been detected. This is intended to be used for
such things as \"cannot fork\", \"cannot create pipe\", or the like. It
includes things like getuid returning a user that does not exist in the
passwd file.")

(defconstant +osfile+ 72
  "Some system file (e.g., /etc/passwd, /etc/utmp, etc.) does not exist, cannot
be opened, or has some sort of error (e.g., syntax error).")

(defconstant +cantcreat+ 73
  "A (user specified) output file cannot be created.")

(defconstant +ioerr+ 74
  "An error occurred while doing I/O on some file.")

(defconstant +tempfail+ 75
  "Temporary failure, indicating something that is not really an error. In
sendmail, this means that a mailer (e.g.) could not create a connection, and
the request should be reattempted later.")

(defconstant +protocol+ 76
  "The remote system returned something that was \"not possible\" during a
protocol exchange.")

(defconstant +noperm+ 77
  "You did not have sufficient permission to perform the operation. This is not
intended for file system problems, which should use NOINPUT or CANTCREAT, but
rather for higher level permissions.")

(defconstant +config+ 78
  "Configuration error.")
