// Write a CPP program to count the length of the Double Linkedlist.
#include <iostream>
using namespace std;
class Node {
public:
  int data;
  Node *prev;
  Node *next;
};

Node *start = NULL;
Node *rear = NULL;

void createDoubleLL() {
  Node *ptr = start;

  if (start == NULL) {
    Node *newNode = new Node;

    cout << "Enter the data of start node: ";
    cin >> newNode->data;

    newNode->prev = NULL;
    newNode->next = NULL;

    start = newNode;
    rear = newNode;

    ptr = rear;
  } else {
    int input;
    cout << "You already have a LL do you want to cont(Y/n)??:  ";
    cin >> input;

    if (input == 'N' || input == 'n') {
      return;
    }

    ptr = rear;
  }

  while (true) {
    int data;

    cout << "Enter further data(to stop enter -1): ";
    cin >> data;

    if (data == -1)
      break;

    Node *newNode = new Node;
    newNode->data = data;
    newNode->prev = ptr;
    newNode->next = NULL;

    ptr->next = newNode;
    ptr = ptr->next;
  }
  rear = ptr;
}

int getLengthLL() {
  int counter = 0;
  Node *ptr = start;
  while (ptr != NULL) {
    counter++;
    ptr = ptr->next;
  }

  return counter;
}

void display() {
  Node *ptr = start;
  while (ptr != NULL) {
    cout << ptr->data << endl;
    ptr = ptr->next;
  }
}

int main() {

  createDoubleLL();
  display();

  cout << "\nThe length of the Double Linked List is: " << getLengthLL();

  cout << "\n";
  return 0;
}