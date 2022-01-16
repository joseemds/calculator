%{
    open Ast
%}


%token LEFT_PAREN
%token RIGHT_PAREN
%token <Ast.op > OP
%token <int> INT
%token EOF

%start <Ast.expr option> expr_opt


%%


let expr_opt :=
    | EOF; { None }
    | e = expr; { e }


let expr ==
    | LEFT_PAREN; { Some(Int(1))}


let a == 
    | o = OP; { o }
    | i = INT; { i }


let paren_block ==
    | LEFT_PAREN; a; RIGHT_PAREN; {}