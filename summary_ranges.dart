class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String>list = [];
    if(nums.length == 0)return list;
    int pr = nums[0];
    int cur = pr;
    
    for(int i=1; i<nums.length; i++){
        if(cur+1==nums[i]){
            cur++;

        }
        else{
            String seg;
            if (pr < cur) seg = pr.toString() + "->" + (cur).toString();
            else seg = pr.toString();
            list.add(seg);
            print("${pr} ${cur}");
            pr = nums[i];
            cur = nums[i];
        }
    }
    String seg;
    if (pr < cur) seg = pr.toString() + "->" + (cur).toString();
    else seg = pr.toString();
    list.add(seg);
    print("${pr} ${cur}");

    return list;
  }
}