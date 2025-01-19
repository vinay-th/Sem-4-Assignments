// Write a CPP program to seach an element from the Single linkedlist.

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

int searchInLL(int key) {
  int count = 0;
  Node *ptr = start;

  while (ptr != NULL) {
    if (ptr->data == key)
      return count + 1;
    count++;
    ptr = ptr->next;
  }

  return -1;
}

void display() {
  Node *ptr = start;

  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

int main() {
  int key;

  createdLL();
  cout << "The Linked List is: " << endl;
  display();

  cout << "Enter the key to search: ";
  cin >> key;

  int res = searchInLL(key);

  if (res >= 0) {
    cout << key << " is on " << res << " element of Linked List" << endl;
  } else {
    cout << "Value of " << key << " does not exist in Linked List";
  }

  cout << "\n";
  return 0;
}