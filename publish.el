#!/usr/bin/emacs -x

;; Copyright (C) 2023 CToID

;; Copying and distribution of this file, with or without modification,
;; are permitted in any medium without royalty provided the copyright
;; notice and this notice are preserved.  This file is offered as-is,
;; without any warranty.

(require 'ox-publish)

(let ((org-publish-project-alist
       '(("union-songs-index"
          :base-directory "~/Documents/git/union-songs/"
          :publishing-directory "~/Documents/git/union-songs/"
          :exclude "README\\.org"
          :recursive nil)
         ("union-songs-contents"
          :base-directory "~/Documents/git/union-songs/org/"
          :publishing-directory "~/Documents/git/union-songs/web/"
          :recursive nil
          :html-head-extra
          "<link rel=\"stylesheet\" type=\"text/css\" href=\"../web/content-page.css\">")
         ("union-songs"
          :components ("union-songs-contents" "union-songs-index"))))
      (org-html-postamble nil))
  (org-publish "union-songs" t))
