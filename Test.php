<?php 
function wordToNumber($input){
    $values = array();
    $value = null;
    $inputString = (string)$input;
    $array = str_split($inputString);
    $length = count($array);
    $result = null;
    

    $numberMap = array(
        'zero' => 0,
        'one' => 1,
        'two' => 2,
        'three' => 3,
        'four' => 4,
        'five' => 5,
        'six' => 6,
        'seven' => 7,
        'eight' => 8,
        'nine' => 9
    );

    $values = explode(' ', $input);
    var_dump($values);
    

    foreach($values as $val){
        if(isset($numberMap[$val])){
            $result .= $numberMap[$val];
        }
    }
    return $result;
}
$input = "nine two ";
$result = wordToNumber($input);
echo $result; // Output: 92



$x = array(2=>"mouse", 7 =>"keyboard");
$y = array_keys($x);
echo $y[1];



function greeting(){
    echo "Welcome to programming skills";
}
echo "PHP Basics, "; 
echo "</br>";   
greeting();

function changeNumber($y){
    $y = $y + 5;
    return $y;
}

$myNumber =  8;
changeNumber($myNumber);
echo $myNumber;

$xx = array(2=>"mouse", 7 =>"keyboard");
$names = array("Tom","Dan","Steve","Jerry");
$shifted = array_shift($names);
$popped = array_pop($names);

foreach($names as $val){
    echo $val;
}

function reverseNumber($number){
    $numb = null;
    $numberString = (string)$number;
    $arrayValues = str_split($numberString);
    $length = count($arrayValues);

    for($i = $length -1 ; $i >=0 ; $i--){
        $numb .= $arrayValues[$i];
    }
                                    
    return $numb;
}



$number = 12345;
$reversedNumber = reverseNumber($number);
echo $reversedNumber; 


function negativeMaker($number){
    $number = $number * -1;
    return $number;
}

$numb = 5;
$numb = negativeMaker($numb);
echo $numb;


$rates = array("Hotel"=>"RM500","Homestays"=>"RM200","Farmstays"=>"RM300");

function printArray($array){
    foreach($array as $key=> $value){
        echo $key. ": ". $value . "<br>";
    }
}
function printKeys($array){
    foreach($array as $key=>$value){
        echo $key . "\n";
    }
}
printArray($rates);
printKeys($rates);




function emailChecker($email){
    $username = "";
    $domain = "";
    $emailString = (string)$email;
    $arrayVal = str_split($emailString);
    $length = count($arrayVal);

    for($i = 0 ;$i < $length ; $i++){
        if($arrayVal[$i] == "@"){
            for($j = 0 ; $j < $i ; $j++){
                $username .= $arrayVal[$j]; 
            }
            for($j = $i + 1; $j < $length ; $j++ ){
                $domain .= $arrayVal[$j];
            }
        }
    }

    echo "Username: " . $username . "\n";
    echo "Domain: " . $domain;
}

function emailChecker2($email){
    $array2 = explode('@', $email);
    $username = $array2[0];
    $domain = $array2[1];


    echo "Username: " . $username . "\n";
    echo "Domain: " . $domain;
}


$email = "Alikhan@email.ru";
emailChecker($email);
emailChecker2($email);





$hostname = 'host';
$username = 'user';
$password = 'pass';

$mysqli = new mysqli($hostname , $username , $password);

if($mysqli->connect_error){
    die("Connect:" . $mysqli->connect_error);
}

$database = 'database';

$query = 'CREATE DATABASE ' . $database;

if($mysqli->query($query) === TRUE){
    echo "good";
}

$mysqli->close();


$query1 = "SELECT country FROM users";
$result = mysqli_query($conn , $query1);

if(mysqli_num_rows($result) > 0){

    while($row = mysqli_fetch_assoc($result)){
        echo $row['name'] . "<br>";
    }
}
$query2 = "SELECT customer , customer_name FROM customers WHERE city = 1 OR city = 2 ";
$result = mysqli_query($conn , $query2);
$query3 = "SELECT cust_name FROM customers ORDER BY cust_name ASC";

$query4 = "INSERT INTO customers(cust_name) VALUES ('name')";

$query5 = "UPDATE customers SET cust_name = 'customer' WHERE cutomer_id = 1 ";

$query6 = "DELETE FROM table1 WHERE id = 1 ";


?>