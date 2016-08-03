  cd /opt/turtlapi
  rm ~/.ccl-init.lisp
  ./ccl/lx86cl64 --load quicklisp.lisp --eval '(quicklisp-quickstart:install)' --eval '(quit)'

  ./ccl/lx86cl64 --load ~/quicklisp/setup.lisp --eval '(ql:system-apropos "vecto")' --eval '(ql:quickload "vecto")' --eval '(ql:add-to-init-file)' --eval '(quit)'
  cp /opt/turtlapi/ccl-init.lisp /opt/turtlrun/.ccl-init.lisp
  #./ccl/lx86cl64 --eval '(push #p"/opt/turtlapi" asdf:*central-registry*)' --eval '(quit)'
    #-quicklisp
#     echo  '(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"'>~/.sbclrc
#                                               echo '(user-homedir-pathname))))'>>~/.sbclrc
#                                               echo    '(when (probe-file quicklisp-init)'>>~/.sbclrc
#                                               echo          '(load quicklisp-init)))'>>~/.sbclrc
#

#  echo "(pushnew \"./\" asdf:*central-registry* :test #'equal)">>~/.sbclrc

