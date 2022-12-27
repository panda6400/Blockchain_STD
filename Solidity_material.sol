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
