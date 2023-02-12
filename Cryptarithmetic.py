def solve(word1, word2, word3):
    for i in range(10):
        for j in range(10):
            for k in range(10):
                for l in range(10):
                    if (ord(word1[0])-ord('A') == i and
                        ord(word1[1])-ord('A') == j and
                        ord(word2[0])-ord('A') == k and
                        ord(word2[1])-ord('A') == l and
                        10*i+j + 10*k+l == 10*(ord(word3[0])-ord('A')) + (ord(word3[1])-ord('A'))):
                        return (i, j, k, l)
    return None

word1 = "SEND"
word2 = "MORE"
word3 = "MONEY"

print(solve(word1, word2, word3))
