/*
Problem: Two sum problem
Problem link: https://leetcode.com/problems/two-sum
*/

class Solution {
 List<int> twoSum(List<int> nums, int target) {
    bool flag = false;
    List<int>ans = [];
    for(int i=0;i<nums.length;i++){
      int cur = nums[i];
      if(nums.indexOf(target-cur)!=i){
        flag = true;
        ans.add(i);
        ans.add(nums.indexOf(target-cur));
        break;
      }
    }
    return ans;
  }
}