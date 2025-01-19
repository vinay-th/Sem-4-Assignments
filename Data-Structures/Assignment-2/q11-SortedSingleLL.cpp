// Write a CPP program to print all the elements of Single Linkedlist in sorted
// Order.
#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createdLL() {
  Node *ptr = start;
  if (start == NULL) {
    Node *newNode = new Node;

    cout << "Enter the data of first node: ";
    cin >> newNode->data;

    newNode->next = NULL;
    start = newNode;

    rear = newNode;
    ptr = newNode;
  }
  while (true) {
    int data;
    cout << "Enter further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->next = NULL;

    ptr->next = newNode;
    ptr = ptr->next;
  }
  rear = ptr;
}

void sortList() {
  Node *ptr = start;

  while (ptr != NULL) {
    Node *postPtr = ptr->next;
    while (postPtr != NULL) {
      int temp;
      if (ptr->data > postPtr->data) {
        temp = ptr->data;
        ptr->data = postPtr->data;
        postPtr->data = temp;
      }
      postPtr = postPtr->next;
    }
    ptr = ptr->next;
  }
}

void display() {
  Node *ptr = start;

  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

int main() {
  createdLL();
  cout << "The unsorted Linked List was: " << endl;
  display();

  cout << "\nThe sorted Linked List is: " << endl;
  sortList();
  display();

  cout << "\n";
  return 0;
}