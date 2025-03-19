// 4. Write a C program to create a tree and search an element from tree.
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

bool search(Node *ptr, int key) {
  while (ptr != NULL) {
    if (ptr->data == key)
      return true;
    else {
      if (key < ptr->data)
        ptr = ptr->left;
      else
        ptr = ptr->right;
    }
  }

  return false;
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

  if (search(root, 20))
    cout << "\n20 exists in the tree" << endl;
  else
    cout << "\n20 does not exist in the tree" << endl;

  cout << "\n";
  return 0;
}