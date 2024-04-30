class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int,int> hash = {};
    for(int i=0; i<nums.length; i++){
        if(hash[target - nums[i]]!=null){
            return [hash[target - nums[i]]!, i];
        }
        hash[nums[i]] = i;
    }
    return [];
  }
}