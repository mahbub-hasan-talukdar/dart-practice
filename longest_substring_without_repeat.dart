class Solution {
  int lengthOfLongestSubstring(String s) {
    List<int> fre = List.filled(200, 0);
    int i = 0, st = 0, n = s.length, ans = 0;
    while (i < n && st < n) {
      while (i < n && fre[s.codeUnitAt(i)] == 0) {
        fre[s.codeUnitAt(i)]++;
        i++;
      }
      ans = ans > i - st ? ans : i - st;
      while (st < n && i < n && fre[s.codeUnitAt(i)] != 0) {
        fre[s.codeUnitAt(st)]--;
        st++;
      }
    }
    return ans;
  }
}
