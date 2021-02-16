public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
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
  if(noCap(noSpace(onlyLetters(word))).equals(reverse(noCap(noSpace(onlyLetters(word)))))){
    return true;
  }else{
  return false;
  }
}
public String noCap(String str){
  return str.toLowerCase();
}
public int numLetters(String str){
  int num = 0;
  for(int i = 0; i < str.length(); i++){
  if(Character.isLetter(str.charAt(i)) == true){
    num++;
  }
  }
  return num;
}
public String onlyLetters(String sString){
  String str = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      str = str + sString.substring(i, i + 1);
      }
    }
    return str;
}
public String noSpace(String str){
  String sNew = new String();
  for(int i = 0; i < str.length(); i ++){
    if(str.substring(i, i + 1).equals(" ")){
      
    }else{
   sNew = sNew + str.substring(i, i + 1);
  }
}
return sNew;
}
public String reverse(String str)
{
    String sNew = new String();
  for(int i = 1; i < str.length() + 1; i++){
    sNew = sNew + str.substring(str.length() - i, str.length() - i + 1);
  }
    return sNew;    
}

