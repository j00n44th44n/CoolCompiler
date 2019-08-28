namespace CoolGrammar.Grammar
{
    public class Error
    {
        private readonly int _charPositionInLine;
        private readonly int _line;
        private readonly string _stringerror;

        public Error(int line, int charPositionInLine, string stringerror)
        {
            _line = line;
            _charPositionInLine = charPositionInLine;
            _stringerror = stringerror;
        }

        public Error(string stringerror)
        {
            _stringerror = stringerror;
            _line = _charPositionInLine = -1;
        }

        public override string ToString()
        {
            if (_charPositionInLine == -1 && _line == -1)
                return $"Description: {_stringerror}";
            return $"Line: {_line} \tColumn: {_charPositionInLine} \tDescription: {_stringerror}";
        }
    }
}