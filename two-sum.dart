class Solution {
  List<int> twoSum(List<int> nums, int target) {
    bool flag = false;
    List<int>ans = [];
    int firstIndex = 0;
    for (int cur in nums){
      firstIndex++;
      bool flag = false;
      int secondIndex = 0;
      for(int next in nums){
        secondIndex++;
        if(cur+next == target && firstIndex!=secondIndex){
          ans.add(firstIndex-1);
          ans.add(secondIndex-1);
          flag = true;
          break;
        }
        
      }
      if(flag == true)break;
    }
  return ans;
  }
}