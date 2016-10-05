
import java.io.IOException;
import java.io.Reader;

public class LexicalAnalyzer {

    LexicalAnalizer(Reader in) {
        this.reader = in;
    }

    private int marked;
    private int current;
    private int start;
    private int end;
    private int state;

    private char[] buffer = new char[1000];

    private boolean eof;

    private Reader reader;

    public void GenerateLexemes() throws IOException {
        int input;
        int action;

        int currentL;
        int markedL;
        
        

        while (true) {
            markedL = marked;   //última posição aceita
            action = -1;
            currentL = current = start = markedL;
            state = 0;
            action:
            {
                
            }
        }
    }

    private void print(String descricao, String lexema) {
        System.out.println(lexema + " - " + descricao);
    }

    public final String text() {
        return new String(buffer, start, marked - start);
    }

    private boolean Fill() throws IOException {
        int numRead = reader.read(buffer, end, buffer.length - end);
        if (numRead > 0) {
            end += numRead;
            return false;
        }
        return true;
    }
}
