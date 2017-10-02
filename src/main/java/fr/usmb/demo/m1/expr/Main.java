package fr.usmb.demo.m1.expr;

import java.io.FileReader;
import java.io.InputStreamReader;
import fr.usmb.demo.m1.expr.Lexer;
import fr.usmb.demo.m1.expr.Parser;

public class Main {
    public static void main(String[] args) throws Exception {
        Lexer lexer;
        if (args.length > 0)
            lexer = new Lexer(new FileReader(args[0]));
        else
            lexer = new Lexer(new InputStreamReader(System.in));
        @SuppressWarnings("deprecation")
        Parser p = new Parser(lexer);
        p.parse();
    }
}
