$NetBSD$

Fixes syntax error. There's probably a beter way to do this.

--- expr.y.orig	2006-10-02 08:50:25.000000000 +0000
+++ expr.y
@@ -107,7 +107,7 @@ static Expr *new_op(Expr *e1, Expr *e2, 
 
 %}
 
-%error-verbose
+/* %error-verbose */
 
 %union {
   int      var;
