module Main exposing (..)

import Html exposing (..)
import Tree
import TreeView


myTree =
    Tree.empty

--nTree = Tree 5 (Tree.singleton 3) (Tree.singleton 3)

--nTree = Tree.singleton 3
--nTree = Tree.Node 3 (Tree.singleton 5) (Tree.Node 7 (Tree.singleton 5) (Tree.singleton 8))

nTree = Tree.insert 1 ( Tree.insert -10 (Tree.insert 1 Tree.Empty) )

main : Html msg
main =
    TreeView.draw 800 nTree

    --TreeView.draw 800 (Tree.singleton (Tree.sum nTree))
