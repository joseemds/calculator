type op =
  | Plus
  | Minus

type expr =
  | Int of int
  | Op of op
  | Expr of expr * expr * expr