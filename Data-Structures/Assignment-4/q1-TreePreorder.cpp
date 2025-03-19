// 1. Write a C program to create a tree and perform Preorder on it.
#include <iostream>
using namespace std;

class Node {
public:
  int data;
  Node *left;
  Node *right;
};

Node *root = NULL;

Node *insert(Node *tree, int val) {
  Node *newNode = new Node();

  newNode->data = val;
  newNode->left = NULL;
  newNode->right = NULL;

  if (tree == NULL)
    tree = newNode;
  else {
    Node *ptr = tree, *parentPtr = NULL;

    while (ptr != NULL) {
      parentPtr = ptr;
      if (val < ptr->data)
        ptr = ptr->left;
      else
        ptr = ptr->right;
    }

    if (val < parentPtr->data)
      parentPtr->left = newNode;
    else
      parentPtr->right = newNode;
  }

  return tree;
}

// Preorder traversal: Root → Left → Right
// output: 40 20 10 30 60 50 70
void preorder(Node *ptr) {
  if (ptr != NULL) {
    cout << ptr->data << " ";
    preorder(ptr->left);
    preorder(ptr->right);
  }
}

int main() {
  root = insert(root, 40);
  root = insert(root, 20);
  root = insert(root, 60);
  root = insert(root, 10);
  root = insert(root, 30);
  root = insert(root, 50);
  root = insert(root, 70);

  cout << "The preorder representation of tree is: ";
  preorder(root);

  cout << "\n";
  return 0;
}