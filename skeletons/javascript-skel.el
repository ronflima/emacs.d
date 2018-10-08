
;; Javascript and Node related skeletons

(define-skeleton node-new-file
  "New node javascript file"
  > "/* -*-javascript-*- */" \n
  > "//" \n
  > "// Copyright (c) " (format-time-string "%Y") " - Nineteen - All rights Reserved" \n
  > "//" \n
  > "// *DISCLAIMER*" \n
  > "//" \n
  > "// This is copyrighted material. This is not free or open software. This" \n
  > "// source-code is private and property of Nineteen." \n
  > "//" \n
  > "// Created: " (format-time-string "%Y-%m-%d" (current-time))_ " by " _ (user-full-name) _ \n
  > "//" \n
  \n
  > "//" \n
  > "// ## Purpose" \n
  > "// " (skeleton-read "This file purpose: ") \n
  > "//" \n _ \n _ \n
  > "'use strict'" \n _ \n
  )

(define-skeleton node-router
  "Node controller"
  > "/* -*-javascript-*- */" \n
  > "//" \n
  > "// Copyright (c) " (format-time-string "%Y") " - Nineteen - All rights Reserved" \n
  > "//" \n
  > "// *DISCLAIMER*" \n
  > "//" \n
  > "// This is copyrighted material. This is not free or open software. This" \n
  > "// source-code is private and property of Nineteen" \n
  > "//" \n
  > "// Created: " (format-time-string "%Y-%m-%d" (current-time))_ " by " _ (user-full-name) _ \n
  > "//" \n
  \n
  > "//" \n
  > "// ## Purpose" \n
  > "// " (skeleton-read "This controller purpose: ") \n
  > "//" \n _ \n
  > "'use strict'" \n _ \n
  > "const router = require('express').Router()" \n _ \n
  > "router.post('" (setq v1 (skeleton-read "Route: " "/"))  "', (req, res, next) => {" \n
  > "// TODO: Implement this method" \n
  > "res.status(501).end()" \n
  > "})" \n _ \n
  > "router.get('" v1 "', (req, res, next) => {" \n
  > "// TODO: Implement this method" \n
  > "res.status(501).end()" \n
  > "})" \n _ \n
  > "router.get('" v1 "/:id', (req, res, next) => {" \n
  > "// TODO: Implement this method" \n
  > "res.status(501).end()" \n
  > "})" \n _ \n
  > "router.put('" v1 "/:id', (req, res, next) => {" \n
  > "// TODO: Implement this method" \n
  > "res.status(501).end()" \n
  > "})" \n _ \n
  > "router.delete('" v1 "/:id', (req, res, next) => {" \n
  > "// TODO: Implement this method" \n
  > "res.status(501).end()" \n
  > "})" \n _ \n
  > "module.exports = router"\n
  )
