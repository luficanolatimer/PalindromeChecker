public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = onlyLetters(word);
  word = word.toLowerCase();
  if (word.equals(reverse(word))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String answer = "";
  for (int i = str.length()-1; i >= 0; i--) {
    answer = answer + str.charAt(i);
  }
  return answer;
}
public String onlyLetters(String sString) {
  String ans = "";
  for (int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i)) == true) {
      ans = ans+sString.charAt(i);
    }
  }
  return ans;
}
