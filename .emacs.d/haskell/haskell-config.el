;; Haskell
(require 'haskell-mode)
(setq auto-mode-alist (cons '("\.hs$" . haskell-mode) auto-mode-alist))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(require 'ghc)
(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;; (require 'flycheck)
;; (add-hook 'after-init-hook #'global-flycheck-mode)

(setq haskell-program-name "ghci")
(custom-set-variables
 '(haskell-mode-hook '(turn-on-haskell-indentation)))
(setq inferior-haskell-find-project-root nil)

(provide 'haskell-config)

;;; haskell-config.el ends here
