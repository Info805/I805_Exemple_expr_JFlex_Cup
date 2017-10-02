/* --------------------------Section de Code Utilisateur---------------------*/
package fr.usmb.demo.m1.expr;
import java_cup.runtime.Symbol;

%%
/* -----------------Section des Declarations et Options----------------------*/
// nom de la class a generer
%class Lexer
%unicode
%line   // numerotation des lignes
%column // numerotation caracteres par ligne

// utilisation avec CUP
// nom de la classe generee par CUP qui contient les symboles terminaux
%cupsym ParserSym
// generation analyser lexical pour CUP
%cup

// code a ajouter dans la classe produite
%{

%}

/* definitions regulieres */

uint   =    0|[1-9][0-9]*
espace =    \s

%%
/* ------------------------Section des Regles Lexicales----------------------*/
/* regles */

\+          { return new Symbol(ParserSym.PLUS, yyline, yycolumn); }
\*          { return new Symbol(ParserSym.MUL, yyline, yycolumn); }
\;          { return new Symbol(ParserSym.SEMI, yyline, yycolumn); }
\(          { return new Symbol(ParserSym.PG, yyline, yycolumn); }
\)          { return new Symbol(ParserSym.PD, yyline, yycolumn); }
{uint}      { return new Symbol(ParserSym.ENTIER, yyline, yycolumn, new Integer(yytext())); }
{espace}    { /* rien a faire */ }
.           { return new Symbol(ParserSym.error, yyline, yycolumn); }
