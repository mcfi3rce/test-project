(defsystem "test-project"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "test-project/tests"))))

(defsystem "test-project/tests"
  :author ""
  :license ""
  :depends-on ("test-project"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for test-project"

  :perform (test-op (op c) (symbol-call :rove :run c)))
