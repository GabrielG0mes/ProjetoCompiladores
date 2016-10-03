package Compilador.AnalisadorLexico;

%%

%{

private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}


%class LexicalAnalyzer
%type void

BRANCO = [\n| |\t|\r]
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
ATRIBUICAO = “=”
SOMA = "+"
SUBTRACAO = ”-”
MULTIPLICACAO = ”*”
DIVISAO = ”/”
NUMERO = 0|[1-9][0-9]*
STRING = [\"][_|a-z|A-Z][a-z|A-Z|0-9|_]*[\"]
ABRE_PARENTESE = ”(”
FECHA_PARENTESE = ”)”
ABRE_CHAVES = ”{”
FECHA_CHAVES = ”}”
PONTO_E_VIRGULA = ”;”


"if"              { imprimir("Palavra reservada if", yytext()); }
"for"             { imprimir("Palavra reservada for", yytext()); }
“while”		        { imprimir("Palavra reservada while", yytext()); }
“do”		          { imprimir(“Palavra reservada do”, yytext()); }
“else”		        { imprimir(“Palavra reservada else”, yytext()); }
{BRANCO}          { imprimir("Espaço em branco", yytext()); }
{ID}              { imprimir("Identificador", yytext()); }
{ATRIBUICAO}      { imprimir("Operador de atribuição", yytext()); }
{SOMA}            { imprimir("Operador de soma", yytext()); }
{SUBTRACAO}       { imprimir("Operador de subtração", yytext()); }
{MULTIPLICACAO}   { imprimir("Operador de multiplicação", yytext()); }
{DIVISAO}   		  { imprimir("Operador de divisão", yytext()); }
{NUMERO}  		    { imprimir("Número", yytext()); }
{STRING}		      { imprimir("String", yytext()); }
{ABRE_PARENTESE}  { imprimir("Separador", yytext()); }
{FECHA_PARENTESE} { imprimir("Separador", yytext()); }
{ABRE_CHAVES}     { imprimir("Separador", yytext()); }
{FECHA_CHAVES}    { imprimir("Separador", yytext()); }
{PONTO_E_VIRGULA} { imprimir("Separador", yytext()); }


. { throw new RuntimeException("Caractere inválido " + yytext()); }
