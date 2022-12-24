#+sb-core-compression
(defmethod asdf:perform ((o asdf:image-op) (c asdf:system))
  (uiop:dump-image (asdf:output-file o c) :executable t :compression t))

(defsystem cffi-static-link-example
  :version "1.0.0"
  :defsystem-depends-on (:cffi-grovel)
  :build-operation "static-program-op"
  :build-pathname "cffi-static-link-example"
  :entry-point "cffi-static-link-example:main"
  :components ((:c-file "my-lib")
               (:file "package"))
  :depends-on (#:asdf #:cffi))
