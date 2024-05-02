class Solution {
  int minimumOperations(List<int> nums) {
    var st = <int>{};
    for(int i=0;i<nums.length;i++){
        if(nums[i]>0)st.add(nums[i]);
    }
    return st.length;
  }
}