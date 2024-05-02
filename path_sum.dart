/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([root.val = 0, root.left, root.right]);
 * }
 */
class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    if(root==null)return false;
    if(targetSum-root.val==0 && root.left==null && root.right==null)return true;
    return hasPathSum(root.left, targetSum-root.val) | hasPathSum(root.right, targetSum-root.val);
  }
}