import 'dart:math';

class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
     intervals.sort((a, b) => a[0].compareTo(b[0])); 
     List<List<int>> ans = [];
    int st = intervals[0][0];
    int ed = intervals[0][1];
    if(intervals.length == 1)return intervals;
    for(int i=1;i<intervals.length;i++){
        int st1 = intervals[i][0];
        int ed1 = max(intervals[i][1],ed);
        if(st1<=ed)ed = ed1;
        else{
            ans.add([st,ed]);
            st = st1; ed = ed1;
        }
    }
    ans.add([st,ed]);
    return ans;
  }
}