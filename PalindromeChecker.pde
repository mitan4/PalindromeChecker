public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  return word.equals(reverse(word));
  //return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--)
      sNew += str.substring(i-1, i);
    return sNew;
}
public String noCapitals(String str){
  return str.toLowerCase();
}
public String noSpaces(String str){
  String sNew = new String();
  for(int i = 0; i < str.length(); i++){
    if(str.substring(i, i+1).equals(" ") == false)
      sNew += str.substring(i, i+1);
  }
  return sNew;
}
public String onlyLetters(String str){
  String sNew = new String();
  for(int i = 0; i < str.length(); i++){
    if(Character.isLetter(str.charAt(i)) == true)
      sNew += str.charAt(i);
  }
  return sNew;
}
