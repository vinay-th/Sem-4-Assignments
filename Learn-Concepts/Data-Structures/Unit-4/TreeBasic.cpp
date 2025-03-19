// To create the Tree Data Structure we use Doubly LL
// Let's create the basic LL
#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *left; // we will use left and right instead of next prev
  Node *right;
};

// start of the tree
Node *tree = NULL;

// func to insert in the tree
Node *insert(Node *tree, int val) {
  //   cout << "Enter the data in tree: ";
  //   cin >> val;

  // newNode ptr for traversing and parentPtr for prePtr
  Node *newNode;

  // make new Node working
  newNode = new Node();
  newNode->data = val;

  // when tree is empty tree = newNode
  if (tree == NULL) {
    tree = newNode;
    tree->left = NULL;
    tree->right = NULL;
  }

  else {
    // traverse the tree with ptr
    Node *ptr = tree, *parentPtr = NULL;

    // loop to get to the end of the tree where val can be placed
    while (ptr != NULL) {
      parentPtr = ptr;
      // when val is < than ptr->data make it left else right
      if (val < ptr->data)
        ptr = ptr->left;
      else
        ptr = ptr->right;
    }

    // when we reach the end of tree
    if (val < parentPtr->data) // if val < newNode to the left
      parentPtr->left = newNode;
    else // else newNode to the right
      parentPtr->right = newNode;
  }

  return tree;
}

// ex: 40 20 60 10 20 30 50 70

// Preorder traversal: Root → Left → Right
// output: 40 20 10 30 60 50 70
void preorder(Node *ptr) {
  // normal ptr used for traversing
  if (ptr != NULL) {
    cout << ptr->data << " ";
    preorder(ptr->left);
    preorder(ptr->right);
  }
}

// Inorder traversal: Left → Root → Right
// output: 10 20 30 40 50 60 70
void inorder(Node *ptr) {
  // normal ptr used for traversing
  if (ptr != NULL) {
    inorder(ptr->left);
    cout << ptr->data << " ";
    inorder(ptr->right);
  }
}

// Postorder traversal: Left → Right → Root
// output: 10 30 20 50 70 60 40
void postorder(Node *ptr) {
  // normal ptr used for traversing
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

  cout << "The inorder tree is: ";
  inorder(tree);
  cout << "\n\nThe preorder tree is: ";
  preorder(tree);
  cout << "\n\nThe postorder tree is: ";
  postorder(tree);

  cout << endl;
  return 0;
}