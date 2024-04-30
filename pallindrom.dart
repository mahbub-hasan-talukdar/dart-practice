class Solution {
  bool isPalindrome(int x) {
    String s = x.toString();
    print(s);
    for(int i=0;i<s.length;i++){
        print(s[i].runtimeType);
        if(s[i]!=s[s.length-1-i])return false;
    }
    
    return true;
  }
}