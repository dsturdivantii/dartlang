import "dart:math";

import "dart:io";

// Doug sturdivant 
// build a console bank. A user should be able to deposit, withdraw and view their account balance.

void main() {
 
final baaccount= Bankacc();

 String name;
 String accname = 'Doug Sturdivant';
 int accnumber = 10001;
 double accbalance = 1000.00;
double deposit = 200.75;
double withdraw = 0.00;
print(' Welcome to console bank ');
print('What would you like to do?');
print('V)iew Balance, D)eposit Money, or W)ithdraw Money,and E)xit');

while (name != "E") {
String name = stdin.readLineSync();



if(name == "V") {
  // View balance
  print(currentbal(accbalance, 0.00));
} else if(name == "D") {
  // Deposit Money
  print("Deposit Amount");
String  deposit1 = stdin.readLineSync();

deposit = double.parse(deposit1);

print(addtoaccount(accbalance,deposit));
accbalance = accbalance + deposit;
baaccount.accbalance=accbalance;
}

if(name == "W") {
print("Withdrawal Amount");
String withdraw1 = stdin.readLineSync();
withdraw = double.parse(withdraw1);
if (withdraw>accbalance) { print(notsuffientfunds());} else print(subaccount(accbalance,-withdraw));

accbalance = accbalance - withdraw;
baaccount.accbalance=accbalance;


}}
  print(notsuffientfunds());
  print(addtoaccount(accbalance,deposit));
  print(currentbal(accbalance , 0.00));
  
}

String currentbal(double accbalance, double deposit) {
// View Account
double total1=accbalance+deposit;
return 'Current balance is $total1 ';
} 

String subaccount(double accbalance,double deposit)
{
double total1=accbalance+deposit;
return 'Money successfully withdrawn - balance is $total1 ';
print(Bankacc.toString());
}
String addtoaccount(double accbalance, double deposit) {
double total1=accbalance+deposit;
return 'Money successfully deposited - balance is  $total1' ;

}

String notsuffientfunds() {
return 'Not suffient funds' ;
}

 class Bankacc {
 Bankacc({this.name, this.accnumber, this.accbalance});
 final String name;
final int accnumber;
final double accbalance;

 String sub1account() =>
  "Money successfully withdrawn - balance is  $accbalance";

 }