; Function definitions: f[x_] := ... or f[x_] = ...
(binary
  (call) @name
  ":=") @item

(binary
  (call) @name
  "=") @item

; Variable definitions: x = ... or x := ...
(binary
  (symbol) @name
  "=") @item

(binary
  (symbol) @name
  ":=") @item

; Tagged definitions: f /: f[x_] := ...
(binary
  (binary
    (symbol) @context
    "/:"
    (call) @name)
  ":=") @item

(binary
  (binary
    (symbol) @context
    "/:"
    (call) @name)
  "=") @item

; Begin / End
(call
  head: (symbol) @name
  (#eq? @name "Begin")
  arguments: (string) @context) @item

(call
  head: (symbol) @name
  (#eq? @name "End")) @item

; BeginPackage / EndPackage
(call
  head: (symbol) @name
  (#eq? @name "BeginPackage")
  arguments: (string) @context) @item

(call
  head: (symbol) @name
  (#eq? @name "EndPackage")) @item
