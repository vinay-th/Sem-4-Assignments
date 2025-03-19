// To create the Tree Data Structure we use Doubly LL
// Let's create the basic LL
#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *left;
  Node *right;
};

Node *tree = NULL;

Node *insert(Node *tree) {
  int val;

  cout << "Enter the data in tree: ";
  cin >> val;

  Node *newNode, *ptr, *parentPtr;

  newNode = new Node();
  newNode->data = val;

  if (tree == NULL) {
    tree = newNode;
    tree->left = NULL;
    tree->right = NULL;
  }

  else {
    ptr = tree;

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

void preorder(Node *tree) {
  if (tree != NULL) {
    cout << tree->data << endl;
    preorder(tree->left);
    preorder(tree->right);
  }
}

int main() {
  tree = insert(tree);
  tree = insert(tree);
  tree = insert(tree);
  tree = insert(tree);

  preorder(tree);

  cout << endl;
  return 0;
}