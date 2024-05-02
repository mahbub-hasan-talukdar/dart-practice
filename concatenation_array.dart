class Solution {
    List<int> firstSolution(List<int> nums){
        List<int> duplicate = List.from(nums);
        nums.addAll(duplicate);
        return nums;
    }
    List<int> secondSolution(List<int> nums){
        List<int> ans = List.generate(nums.length*2, (index){
            if(index < nums.length){
                return nums[index];
            }
            return nums[index-nums.length];
        });
        return ans;

    }
  List<int> getConcatenation(List<int> nums) {
    // return firstSolution(nums);
    return secondSolution(nums);

  }
}