(require 'mmm-auto nil t)

(setq
 mmm-global-mode 'maybe
 mmm-submode-decoration-level 2)

(eval-after-load
    "mmm-mode"
  '(progn
     ;
(define-key mmm-mode-map (kbd "M-p") 'mmm-parse-buffer)
     (set-face-attribute 'mmm-default-submode-face nil
                         :background "unspecified-bg")
     (set-face-attribute 'mmm-code-submode-face nil
                         :background "unspecified-bg")))

(eval-after-load
    "mmm-auto"
  '(progn
     (mmm-add-group
      'html-plus
      '((javascript-block
         :front "<script[^>]*>"
         :back "</script>"
         :submode javascript-mode)
        (flex-actionscript-block
         :front "<mx:Script>"
         :back "</mx:Script>"
         :submode javascript-mode)
        (javascript-handler
         :front (concat
                 "on\\("
                 (mapconcat
                  'identity
                  '("blur" "change" "click" "dblclick" "focus" "keydown"
                    "keypress" "keyup" "load" "mousedown" "mousemove"
                    "mouseout" "mouseover" "mouseup" "reset" "select"
                    "submit" "unload") "\\|")
                 "\\)=\"")
         :back "\""
         :submode javascript-mode)
        (css-block
         :front "<style[^>]*>"
         :back "</style>"
         :submode css-mode)
        (css-inline
         :front "style=\""
         :back "\""
         :submode css-mode)
        (php-block
         :front "<[?]" ;; formerly "<[?]\\S-*"
         :back "[?]>"
         :submode php-mode)
        (ruby-block
         :front "<%[#=]?"
         :back "%>"
         :submode ruby-mode)))
     (add-to-list 'mmm-mode-ext-classes-alist '(sgml-mode nil html-plus))
     (add-to-list 'mmm-mode-ext-classes-alist '(xml-mode  nil html-plus))))
