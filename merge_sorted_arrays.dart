class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int>list = [];
    for(int i=0; i<m; i++){
        list.add(nums1[i]);
    }
    for(int i=0; i<n; i++){
        list.add(nums2[i]);
    }
    list.sort();
    nums1.clear();
    for(int i in list)nums1.add(i);

  }
}