// 5. Write a C program to create a tree and sum all the values of Tree
// elements.
#include <iostream>
using namespace std;

class Node {
public:
  int data;
  Node *left;
  Node *right;
};

Node *root = NULL;

Node *insert(Node *root, int val) {
  Node *newNode = new Node();

  newNode->data = val;
  newNode->left = NULL;
  newNode->right = NULL;

  if (root == NULL)
    root = newNode;
  else {
    Node *ptr = root;
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

  return root;
}

void inorder(Node *ptr) {
  if (ptr != NULL) {
    inorder(ptr->left);
    cout << ptr->data << " ";
    inorder(ptr->right);
  }
}

int sum(Node *ptr) {
  if (ptr == NULL)
    return 0;

  // simple concept of recursion we get all lefts and all rights with root
  return ptr->data + sum(ptr->left) + sum(ptr->right);
}

int main() {
  root = insert(root, 40);
  root = insert(root, 20);
  root = insert(root, 60);
  root = insert(root, 10);
  root = insert(root, 30);
  root = insert(root, 50);
  root = insert(root, 70);

  inorder(root);

  cout << "\n\nThe sum of all the elements in tree is: " << sum(root);

  cout << "\n";
  return 0;
}