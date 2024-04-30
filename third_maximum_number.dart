class Solution {
  int thirdMax(List<int> nums) {
    List<int> st = nums.toSet().toList();
    st.sort();
    print(st);

    if(st.length<3)return st.last;
    return st[st.length-3];
  }
}