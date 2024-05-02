class Solution {
    
  int findPoisonedDuration(List<int> timeSeries, int duration) {
    int ans = 0;
    for(int i=1;i<timeSeries.length;i++){
        ans+=(timeSeries[i]>timeSeries[i-1]+duration)?duration:(timeSeries[i]-timeSeries[i-1]);
    }
    return ans+duration;
  }
}