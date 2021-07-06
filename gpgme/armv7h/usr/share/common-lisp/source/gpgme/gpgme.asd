;;; -*- Mode: lisp -*-

;;; Copyright (C) 2006 g10 Code GmbH
;;;
;;; This file is part of GPGME.
;;;
;;; GPGME is free software; you can redistribute it and/or
;;; modify it under the terms of the GNU Lesser General Public License
;;; as published by the Free Software Foundation; either version 2.1 of
;;; the License, or (at your option) any later version.
;;;
;;; GPGME is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; Lesser General Public License for more details.
;;;
;;; You should have received a copy of the GNU Lesser General Public
;;; License along with GPGME; if not, write to the Free
;;; Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
;;; 02111-1307, USA.

(defpackage #:gpgme-system
  (:use #:common-lisp #:asdf))

(in-package #:gpgme-system)

(defsystem gpgme
  :description "GnuPG Made Easy."
  :author "g10 Code GmbH"
  :version "1.16.0"
  :licence "GPL"
  :defsystem-depends-on ("cffi-grovel")
  :depends-on ("cffi" "gpg-error" "trivial-garbage")
  :components ((:file "gpgme-package")
               (:cffi-grovel-file "gpgme-grovel"
                :depends-on ("gpgme-package"))
	       (:file "gpgme"
		:depends-on ("gpgme-package" "gpgme-grovel"))))
