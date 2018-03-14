# README
The initial task was -
A non-empty zero-indexed array A consisting of N integers is given.
A peak is on array element which is larger than it's neighbors. More precisely, it
is on index P such that a < P < N − 1,  A[P − 1] < A[P] and A[P] > A[P + 1].
For example, the following array A:


   A[0] = 1


   A[1] = 2


   A[2] = 3


   A[3] = 4


   A[4] = 3


   A[5] = 4


   A[6] = 1


   A[7] = 2


   A[8] = 3


   A[9] = 4


   A[10] = 6


   A[11] = 2


has exactly three peaks: 3, 5, 10.


We want to divide this array into blocks containing the same number of
elements. More precisely, we want to choose a number K that will yield the
following blocks:


* A[a], A[1], ..., A[K − 1],
* A[K], A[K + 1], ..., A[2K − 1],
* ...A[N − K], A[N − K + 1], ..., A[N − 1].


What's more, every block should contain at least one peak. Notice that
extreme elements of the blocks (for example A[K − 1] or A[K]) can also be
peaks, but only if they have both neighbors (including one in an adjacent
blocks).
