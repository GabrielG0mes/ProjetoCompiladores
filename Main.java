package Compilador;

import java.io.IOException;
import java.io.StringReader;

public class Main {

    public static void main(String[] args) throws IOException {
        String string = "iforwhleds";
        LexicalAnalyzer la = new LexicalAnalyzer(new StringReader(string));
        la.lex();
    }
    
}
