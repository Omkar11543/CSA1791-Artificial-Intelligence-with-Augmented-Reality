def backtrack(candidates, combination, target, start):
    if target == 0:
        result.append(combination[:])
        return
    for i in range(start, len(candidates)):
        if target < candidates[i]:
            return
        combination.append(candidates[i])
        backtrack(candidates, combination, target-candidates[i], i)
        combination.pop()

def combinationSum(candidates, target):
    result = []
    candidates.sort()
    backtrack(candidates, [], target, 0)
    return result

candidates = [2,3,6,7]
target = 7
