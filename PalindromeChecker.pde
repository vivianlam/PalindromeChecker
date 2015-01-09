//Vivian Lam, AP CS, Mod 6/7, PalindromeChecker
public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}


public boolean palindrome(String word)
{
  word=word.toLowerCase();
  String temp="";
  for(int i=0; i<word.length(); i++)
  if(word.charAt(i)!=' ' && Character.isLetter(word.charAt(i)))
  temp=temp+word.charAt(i);
  int first=0;
  int last=temp.length()-1;
  while(first<last)
  {
    if(temp.charAt(first)!=(temp.charAt(last)))
    {
      return false;
    }
    else
    {
      first++;
      last--;
    } 
  }
  return true;
}

