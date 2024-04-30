class Solution {
  bool isValid(String s) {
    List<int> stack = [];
    for(int i=0;i<s.length;i++){
        if(s[i]=='(' || s[i]=='{' || s[i]=='['){
            stack.add(s[i].codeUnitAt(0));
        }
        else{
          if(s[i]==')' && stack.length>0 && stack.last=='('.codeUnitAt(0))stack.removeLast();
          else if(s[i]=='}' && stack.length>0 && stack.last=='{'.codeUnitAt(0))stack.removeLast();
          else if(s[i]==']' && stack.length>0 && stack.last=='['.codeUnitAt(0))stack.removeLast();
          else return false;
        }
    }
    return stack.length==0;
  }
}