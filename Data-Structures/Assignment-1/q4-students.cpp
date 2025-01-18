#include <iostream>
using namespace std;
class Student {
public:
  int number;
  string name;
  string address;
};
int main() {
  int num;

  cout << "Enter the number of students: ";
  cin >> num;

  Student stu[num];

  cout << "Now provide info of all students: " << endl;
  for (int i = 0; i < num; i++) {
    cout << endl;
    cout << "Enter the name for student[" << i << "]: ";
    cin >> stu[i].name;
    cout << "Enter the number for student[" << i << "]: ";
    cin >> stu[i].number;
    cout << "Enter the address for student[" << i << "]: ";
    cin >> stu[i].address;
  }

  cout << endl;

  cout << "These are the details of the student:" << endl;

  for (int i = 0; i < num; i++) {
    cout << "name of student[" << i << "]: " << stu[i].name << endl;
    cout << "number of student[" << i << "]: " << stu[i].number << endl;
    cout << "address of student[" << i << "]: " << stu[i].address << endl;
    cout << endl;
  }

  cout << "\n";
  return 0;
}