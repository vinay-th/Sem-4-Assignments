#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createLinkedList() {
  Node *ptr, *newNode;
  int size;
  cout << "Enter the length of Linked list: ";
  cin >> size;
  for (int i = 0; i < size; i++) {
    int val;
    cout << "Enter the value: ";
    cin >> val;
    newNode = new Node;
    newNode->data = val;
    newNode->next = NULL;
    if (start == NULL) {
      start = newNode;
      ptr = start;
    } else {
      ptr->next = newNode;
      ptr = newNode;
    }
  }
}

void display() {
  Node *node = start;
  while (node != NULL) {
    cout << node->data << " ";
    node = node->next;
  }
}

int main() {

  createLinkedList();
  display();

  cout << "\n";
  return 0;
}