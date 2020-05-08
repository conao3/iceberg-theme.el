;;; iceberg.el --- Well-designed, eye-friendly, dark blue color scheme  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Naoya Yamashita

;; Author: Naoya Yamashita <conao3@gmail.com>
;; Version: 0.0.1
;; Keywords: convenience
;; Package-Requires: ((emacs "26.1") (solarized-theme "1.3"))
;; URL: https://github.com/conao3/iceberg.el

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Well-designed, eye-friendly, dark blue color scheme.


;;; Code:

(require 'solarized-theme)

(defgroup iceberg nil
  "Well-designed, eye-friendly, dark blue color scheme."
  :prefix "iceberg-"
  :group 'tools
  :link '(url-link :tag "Github" "https://github.com/conao3/iceberg.el"))

(defun iceberg-dark--reload-theme nil
  "Reload iceberg theme."
  (interactive)
  (eval-buffer)
  (load-theme 'solarized-iceberg-dark t))

;; pick "#e5c06d" "#d33682" out of iceberg palette
(solarized-create-theme-file-with-palette 'dark 'solarized-iceberg-dark
  '("#161821" "#c6c8d1" "#e5c06d" "#e2a478" "#e27878" "#d33682" "#a093c7" "#84a0c6" "#89b8c2" "#b4be82")
  nil)

(provide 'iceberg)

;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; iceberg.el ends here
