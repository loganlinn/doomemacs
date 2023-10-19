;; -*- no-byte-compile: t; -*-
;;; lang/haskell/packages.el

(package! haskell-mode :pin "167421abf1db7dd4d297392b58b89bd72e2a9a63")

(when (and (modulep! +lsp)
           (not (modulep! :tools lsp +eglot)))
  (package! lsp-haskell :pin "89d16370434e9a247e95b8b701f524f5abfc884b"))
