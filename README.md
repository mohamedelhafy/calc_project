# Simple calculator by assembly code



-  ## Description of the project

simple calculator make some Arithmetic operations like add, subtract, multiplication, and division that applies priority option


-  ## Idea of Project

The idea of this program is to get the equation as a string from the user  then,the program checks the '+' and '-' signs and when the program finds them it calculates the block before this sign and 
the block after this sign individually to execute multiplication and division processes first as
 they have highest priority. 


-  ## Code explanation

<img src="https://user-images.githubusercontent.com/40215551/104139274-07cc1a00-53b3-11eb-863f-9e68e5707866.png" width="180" height="250">
we moving the index of the frist element in stringIn in eax register and max+1 in ecx then call the readstring function which the irvine function 
which can read the input in a string form and it restore the value which readed in the sting its index added to eax so we store the index of stringIn string in eax  and then call splitbyadd function which will do the hard work and the splitbymul then when the function return write the answer with the irvine function 



<img src="https://user-images.githubusercontent.com/76923461/104135963-cf6d1180-539b-11eb-9e80-323ce1a55dac.PNG" width="180" height="250">
Splitbyadd check all index until we found -or + operation  then splitbymul is called After return we check again all index after -or + operationAnd execute other operations

<img src="https://user-images.githubusercontent.com/77008342/104136726-98e5c580-53a0-11eb-9ec2-f965bc46e02d.png" width="500" height="300">


End-Cont label:-

this function will be executed when the string is empty which is the end of the string so, 
this function gets the final value of the equation.

Add-count label:-

this function is called when the next character (sym-add) is the '+' sign so, 
this function calculate the blocks before and after this sign then,
it executes the adding operation

Sub-cont label:-
this function is called when the next character (sym-add) is the '-' sign so, 
this function calculates the blocks before and after it and then, executes subtracting process. 

<img src="https://user-images.githubusercontent.com/76923461/104137190-b6685e80-53a3-11eb-9f07-5c997af2809d.PNG" width="180" height="250">

when splitbyadd read sum symbol or subtract symbol this function will call splitbymul in order to implement multiplication or division operations then store the result until complete another operations
and when reaching to the end of the string after ending multiplication or division operation will return to the place which calls this function in splitbyadd



<img src="https://user-images.githubusercontent.com/36426512/104137427-3d6a0680-53a5-11eb-96d4-f80c6016c3ab.jpg" width="500" height="300">


End-Cont label:- 

this function will be executed when the string is empty which is the end of the string so,
this function gets the final value of the equation. 

mul-count label:-  

this function is called when the process character (sym-mul)  after or before the '-' or '+' signs is the '*' process character so,
a multiplication process is performed.    

div-cont label:- 

this function is called when the process character (sym-mul) after or before the '+' or '-' signs is the '/' process character so,
a division process is performed.

<img src="https://user-images.githubusercontent.com/40215551/104139775-59c26f00-53b6-11eb-80d2-e1e42864cd4f.png" width="600" height="100">

-  ## Result

<img src="https://user-images.githubusercontent.com/36426512/104137677-3fcd6000-53a7-11eb-9406-38d84d78945f.PNG" width="600" height="100">


