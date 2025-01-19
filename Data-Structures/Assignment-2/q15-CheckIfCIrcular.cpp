// Write a CPP program to check whether the linkedlist is circular or not.
#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createLL() {
  if (start == NULL) {
    Node *newNode = new Node;

    cout << "Enter the data of start node: ";
    cin >> newNode->data;

    newNode->next = newNode;
    start = newNode;
    rear = newNode;
  }
  while (true) {
    int data;
    cout << "Enter further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;

    newNode->data = data;
    newNode->next = start;

    rear->next = newNode;
    rear = newNode;
  }
}

bool isCircular() {
  if (rear->next == start)
    return true;
  else
    return false;
}

void display() {
  Node *ptr = start;

  do {
    cout << ptr->data << endl;
    ptr = ptr->next;
  } while (ptr != start);
}

int main() {
  createLL();
  display();

  if (isCircular())
    cout << "The Linked list is circular" << endl;
  else
    cout << "The Linked list is not circular" << endl;

  cout << "\n";
  return 0;
}