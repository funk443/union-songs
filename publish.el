#!/usr/bin/emacs -x

;; Copyright (C) 2023 CToID

;; Copying and distribution of this file, with or without modification,
;; are permitted in any medium without royalty provided the copyright
;; notice and this notice are preserved.  This file is offered as-is,
;; without any warranty.

(require 'org)

(setq-local org-publish-project-alist
            '(("union-songs"
               :base-directory "~/Documents/git/union-songs/org/"
               :publishing-directory "~/Documents/git/union-songs/web/"
               :html-head-extra
               "<link rel=\"stylesheet\" type=\"text/css\" href=\"../web/content-page.css\">")))

(org-publish "union-songs")
