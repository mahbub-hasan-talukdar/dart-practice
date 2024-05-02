class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<int>fre = List<int>.filled(26,0);

    for(int i=0;i<magazine.length;i++){
        fre[magazine.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    for(int i=0;i<ransomNote.length;i++){
        fre[ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0)]--;
        if(fre[ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0)]<0)return false;
    }

    return true;

  }
}