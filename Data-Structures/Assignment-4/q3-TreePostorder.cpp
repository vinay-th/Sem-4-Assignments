// 3. Write a C program to create a tree and perform Postorder on it.
#include <iostream>
using namespace std;

class Node {
public:
  int data;
  Node *left;
  Node *right;
};

Node *tree = NULL;

Node *insert(Node *tree, int val) {
  Node *newNode = new Node();

  newNode->data = val;
  newNode->left = NULL;
  newNode->right = NULL;

  if (tree == NULL)
    tree = newNode;
  else {
    Node *ptr = tree;
    Node *parentPtr = NULL;

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

void postorder(Node *ptr) {
  if (ptr != NULL) {
    postorder(ptr->left);
    postorder(ptr->right);
    cout << ptr->data << " ";
  }
}

int main() {
  tree = insert(tree, 40);
  tree = insert(tree, 20);
  tree = insert(tree, 60);
  tree = insert(tree, 10);
  tree = insert(tree, 30);
  tree = insert(tree, 50);
  tree = insert(tree, 70);

  postorder(tree);

  cout << endl;
  return 0;
}