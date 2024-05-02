class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    List<int> stack = [];
    List<int> ans = List.filled(nums2.length,0);

    Map<int,int> pos = {};
    for(int i=0;i<nums2.length;i++){
        pos[nums2[i]] = i;
    }

    for(int i=nums2.length-1;i>=0;i--){
        while(stack.length>0 && stack.last<=nums2[i])stack.removeLast();
        if(stack.length==0){
            ans[i] = -1;
            stack.add(nums2[i]);
        }
        else{
            ans[i] = stack.last;
            stack.add(nums2[i]);
        }
    }
    
    for(int i=0;i<nums1.length;i++){
        nums1[i] = ans[pos[nums1[i]]!];
    }
    return nums1;
  }

}
/*

1  5  3  6  2
-1 -1 6 6 5
5 6 2

*/