ALGORITHM Checkpoint
VAR
    sentence : string;
    length, wordCount, vowelCount : integer;
BEGIN
    length := 0;
    wordCount := 1;
    vowelCount := 0;
    writeln('Enter a sentence: ');
    readln(sentence);
    if sentence[length(sentence)] <> '.' then
    begin
        writeln('The sentence must end with a point');
        exit;
    end;
    for i:= 1 to length(sentence)-1 do
    begin
        if sentence[i] = ' ' then
            wordCount := wordCount + 1;
        if (sentence[i] = 'a') or (sentence[i] = 'e') or (sentence[i] = 'i') or (sentence[i] = 'o') or (sentence[i] = 'u') or (sentence[i] = 'A') or (sentence[i] = 'E') or (sentence[i] = 'I') or (sentence[i] = 'O') or (sentence[i] = 'U') or (sentence[i] = 'y') or (sentence[i] = 'Y') then
            vowelCount := vowelCount + 1;
        length := length + 1;
    end;
    writeln('The length of the sentence is: ', length);
    writeln('The number of words in the sentence is: ', wordCount);
    writeln('The number of vowels in the sentence is: ', vowelCount);
END
