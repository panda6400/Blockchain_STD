// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// ====>> normal program

// contract fisrtcont {
//     string name;
//     uint age;

//     constructor() public {
//         name = "mohit";
//         age = 19;
//     }

//     function getName() public view returns (string memory) {
//         return name;
//     }

//     function getAge() public view returns (uint) {
//         return age;
//     }

//     function setAge() public {
//         age = age +1;
//     }
// }
// --------------------------------------------------------------------------------------------------------------------

// ====>> state variabel

// contract statevar
// {
//     uint public age; // value defult = 0
//     uint public age2 = 10; // true

//     string public name = "mohit";
//     // name = "mohit"; wrong define

//     constructor() public    // true
//     {
//         age = 11;
//     }

//     function setAge() public // true
//     {
//         age = 30;
//     }

// }

// --------------------------------------------------------------------------------------------------------------------

// ====>> state variabel info

// permanently store in contract storage.
// cost gas(expaensive).
// storage not dynamically allocated.
// instance of the contract have other sate variable besides those already declared.

// --------------------------------------------------------------------------------------------------------------------

// ====>> local variabel

// contract localvar // function in variabel called local or outer side variabel state variabel.
// {
// // string name = "mohit";  // if you use string variabel in contract level so not use memory keyword.
//     function storename() pure public returns(string memory)
//     {
//         string memory name = "mohit"; // if you use string in function so use memory keyword.
//         return name;
//     }

//     function storeage() pure public returns(uint)
//     {
//         uint age = 19;
//         return age;
//     }
// }

// --------------------------------------------------------------------------------------------------------------------

// ====>> local variabel info

// local var store in stack and local var create inside function not store in storage.
// don't cost gas.
// some types of var store in defult storage, if store in function stack so use memory keyword.
// memory keyword not use in contract level.

// --------------------------------------------------------------------------------------------------------------------

// ====>> functions

// contract createfun {
// function getter() pure public returns(string memory)
// {
//     string memory normal_name = "mohit";
//     return normal_name;
// }

// string public name = "mohit";

// function setter(string memory new_name) public
// {
//     name = new_name;
// }

// uint public age = 20;

// function setAge() public
// {
//     age = age + 1;
// }

// part -2
// setter and getter function
// uint256 age = 10;

// function getter() public view returns (uint256)
// {
//     return age;
// }
// function setter(uint new_age) public
// {
//     age = new_age;
// }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> functions info

// setter function in cost gas or getter in not paid.
// by defualt variabel visiblity private.
// when you create state variabel public a getter function automatically created.
// --------------------------------------------------------------------------------------------------------------------
// ====>> view and pure

// contract viewandpure
// {
//     string public name = "mohit";
//     function read_name() view public returns(string memory) // read only
//     {
//         return name;
//     }
//     function noread_name() pure public returns(string memory) // no read or write
//     {
//         string memory new_name = "mohan";
//         return new_name;
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> view and pure info

// pure ki jagah aap view use kar sakate hey but pure ki jagah view.
// view ka use state var ko read kar ne me hota hey.
// pure ka use local var ko read kar ne me hota hey or pure ka use read or write dono me nahi hota.

// --------------------------------------------------------------------------------------------------------------------
// ====>> constructor

// contract create_constructor
// {
//     uint public count;
//     constructor(uint new_count) // with argument
//     {
//         count = new_count;
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> constructor info

// executed only once.
// you can create only one constructor and that is optional.
// a default constructor is created by the compiler if there is no explicitly defined contractor.

// --------------------------------------------------------------------------------------------------------------------
// ====>> int or uint (integer and unsign integer)

// --->>  int    int8 to int256      uint    uint8 to uint256
// range
// int8 -128 to +127
// uint8 0 to +255
// int16 -32768 to +32767
// uint 0 to 65535

// contract intanduint
// {
//     int8 public integer = 127;
//     int8 public integer_01 = -128;
//     uint8 public uinteger = 0;
//     uint8 public uinteger_01 = 255;
//     // uint8 public uinteger_01 = 256;    // error
//     // uint8 public uinteger_01 = -1;     // error
//     // int8 public integer_02 = 128;      // error
//     // int8 public integer_02 = -129;     // error
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> array (fixed_size_arr and dynamic_size_arr)

// contract create_fixed_size_array
// {
//     uint[4] public arr= [10,20,30,40]; //fixed size array

//     function set_arr(uint index,uint value) public //set_array
//     {
//         arr[index]=value;
//     }
//     function length() public view returns(uint)
//     {
//         return arr.length;
//     }
// }

// contract create_dynamic_size_array
// {
//     uint[] public arr;
//     function pushElement(uint item) public //set_array
//     {
//         arr.push(item);
//     }
//     function length() public view returns(uint)
//     {
//         return arr.length;
//     }
//     function popElement() public
//     {
//         arr.pop();
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> array (Byte_arr)
// 1 Byte = 8 bits
// 1 Hexadecimal digit = 4 Bits
// Everything that will be stored in the byte array will be in the form of hexadecimal digits.
// contract create_Fixed_Byte_array
// {
//     bytes1 public a2="a";
//     bytes2 public a3="ab";
//     bytes3 public a4="a";//last 2 --> 610000
//     byte4 public a5;
//     function setArray() public
//     {
//         a5 = 'abcd';
//     }
// }
// contract create_dynamic_byte_array
// {
//     bytes public b1 = "abc";
//     function pushElement() public
//     {
//         b1.push("d");
//     }
//     function getElement(uint i) public view returns(bytes1)
//     {
//        return b1[i];
//     }
//     function getLength() public view returns(uint)
//     {
//         return b1.length;
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> Loop
// contract create_While_loop {
//     uint256[3] public arr;
//     uint256 public count;

//     function create_while_Loop() public {
//         while (count < arr.length) {
//             arr[count] = count;
//             count++;
//         }
//     }

//     function create_for_loop() public {
//         for (uint256 i = count; i < arr.length; i++) {
//             arr[count] = count;
//             count++;
//         }
//     }

//     function create_do_while_loop() public {
//         do {
//             arr[count] = count;
//             count++;
//         } while (count < arr.length);
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> if-else statment
// contract if_else
// {
//     function check(int a) public pure returns(string memory)
//     {
//         string memory value;
//         if(a>0){
//             value="greter than Zero";
//         }
//         else if(a==0){
//             value="equal to Zero";
//         }
//         else{
//             value="less than Zero";
//         }
//         return value;
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> boolian datatype
// contract createBoolian {
//     bool public value = true;

//     function check(int a) public returns (bool) {
//         if(a>100)
//         {
//             value = true;
//             return value;
//         }
//         else
//         {
//             value = false;
//             return value;
//         }
//         // return value;// true
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> boolian datatype info

// bool the possible values are constants true and false.
// ! (logical negation)
// && (logical conjunction, "and")
// || (logical disjunction, "or")
// == (equality)
// != (inequality)

// --------------------------------------------------------------------------------------------------------------------
// ====>> structur

// struct student {  // struct create outer contract or inner contract
//     uint256 roll;
//     string name;
// }

// contract create_structur {
//     student public std_01;
//     student public std_02;
//     student public std_03;

//     constructor(
//         uint256 _roll,
//         string memory _name // add using input fun .....
//     ) {
//         std_03.roll = _roll;
//         std_03.name = _name;
//     }

//     function getter() public // manually add values
//     {
//         std_01.name = "mohit";
//         std_01.roll = 1;
//         std_02.name = "ram";
//         std_02.roll = 2;
//     }

//     // how to use structur in function .....
//     // if struct create in memory so use memory keyword in function .....

//     function change(uint256 _roll1, string memory _name1) public {
//         student memory std_04 = student({roll: _roll1, name: _name1}); // use memory keyword in struct function ....
//         std_01 = std_04;
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// ====>> enum

// enum user {
//     allowed, // set
//     not_allowed, // set
//     wait // set
// }

// contract create_Enum {
//     uint256 public lottery = 1000;

//     user public u1 = user.allowed;

//     function onner() public {
//         if (u1 == user.allowed) {
//             lottery = 0;
//         }
//     }

//     function change_Owner() public {
//         u1 = user.not_allowed;
//     }
// }

// readiblity of code good.
// in enum set are very limited.

// --------------------------------------------------------------------------------------------------------------------
// ====>> mapping

// concept of keys and values.
// mapping (key => value)
// mapping difrent array because in arr uint[100] for this table value and in this value gap 0 - 5 - 100 in value between 0-5 are
// 00000000 and in mapping value use only some space .......
//    _roll               _name
//    0          =>       mohit
//    5          =>       rohan
//    100        =>       meet

// contract create_Mapping {
//     mapping(uint => string) public roll_No;

//     function setter(uint key, string memory value) public {
//         roll_No[key] = value;
//     }
// }

// struct with use mapping ....
// struct class_data {
//     uint256 class;
//     string name;
// }

// contract create_MappingWithStruct {
//     mapping(uint256 => class_data) public data;

//     function setter(
//         uint256 _roll,
//         uint256 _class,
//         string memory _name
//     ) public {
//         data[_roll] = class_data(_class, _name);
//     }
// }

// the key cannot be types mapping, dynamic array, enum and struct.
// the values can be of any type.
// mapping always stored in strorage, they are declared in contract storage or not.

// --------------------------------------------------------------------------------------------------------------------
// strorage and memory

// storage holds state variabels. and memory hold local variabels.
// storage like hdd(permanatly). and memory like ram.
// storage cost gas. memory no gas.

// contract create_storageandmemory {
//     string[] public student_Name = ["raj", "ravi", "mohit", "ronak"];

//     function sto() public {
//         string[] storage s1 = student_Name; // change student_Name arrray ....
//         s1[0] = "akash";
//     }

//     function mem() public view {
//         string[] memory s1 = student_Name;
//         s1[1] = "akash";
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// Global variabel

// contract Global_var{
//     function getter() public view returns(uint block_no, uint timestamp, address msg_sender){
//         return(block.number, block.timestamp, msg.sender);
//     }
// }

// global var use normal it's not syntax;

// --------------------------------------------------------------------------------------------------------------------
// Contract Balance

// contract pay {
//     address payable user = payable(0x96b166CF8DeE6E460F75c6Cd369929b7d0F8f263);

//     function payEther() public payable {}

//     function getBalance() public view returns (uint256) {
//         return address(this).balance;
//     }
//     function senderEtherAccount() public{
//         user.transfer(1 ether);
//     }
// }

// --------------------------------------------------------------------------------------------------------------------
// Visibility

// public    outside within derived other
// private     -     within    -      -
// internal    -     within derived   -
// external  outside   -    derived other

// contract a {
//     function f1() public pure returns (uint256) {
//         return 1;
//     }

//     function f2() private pure returns (uint256) {
//         return 2;
//     }

//     function f3() internal pure returns (uint256) {
//         // uint x = f3(); // within contract
//         return 3;
//     }

//     function f4() external pure returns (uint256) {
//         return 4;
//     }
// }

// contract b is a{
//     uint public y = f1(); // derived (f4 not call because y is var that within
// }

// contract c{
//     a obj = new a();
//     uint public z = obj.f4();
// }

// --------------------------------------------------------------------------------------------------------------------

