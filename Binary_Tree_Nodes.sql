-- Hackerrank_Binary_Tree_Nodes (https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true)
-- SQL(Intermediate), Advanced Select
select n, case when n = (select n from BST where p is null) then 'Root'
when n in (select p from BST) then 'Inner'
else 'Leaf' end
from BST
order by n;