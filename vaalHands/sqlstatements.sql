in admin files:

$conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
$sql = "SELECT * FROM patriot_data ";
$query_run = mysqli_query($conn,$sql);

while ($row = mysqli_fetch_array($query_run))
{    
    echo  "
    <td  >".$row["patriotID"]."</td>
      <td>".$row["patriotName"]."</td>
      <td >".$row["patriotGender"]."</td>
      <td >".$row["patriotAddress"]."</td>
      <td >".$row["patriotPhoneNo"]."</td>
      <td >".$row["patriotEmail"]."</td>
      <td >".$row["patriotStatus"]."</td>
    </tr>
  ";     
}
?>
</table>
<br> <br>
<p id="table">WORKERS of the VAAL ACCOUNTS</p>
<table>
    <th>
    <tr>
    <th  >ID</th>
    <th >Name</th>
    <th >Gender</th>
    <th> Address</th>
    <th >Phone No</th>
    <th >Email</th>
    <th>Type</th>
    <th >Status</th>
    <th >PROFILE LINK</th>
  </tr>
    </th>
<?php
session_start();
$conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
$sql = "SELECT * FROM workerdata ";
$query_run = mysqli_query($conn,$sql);

while ($row = mysqli_fetch_array($query_run))
{    
  $_SESSION["workerID"] = $row["workerID"];
  $id = $_SESSION["workerID"];
    echo  "
      <td > ID ".$_SESSION["workerID"] ."</td> 
      <td >".$row["workerName"]."</td>
      <td >".$row["workerGender"]."</td>
      <td >".$row["workerAddress"]."</td>
      <td >".$row["workerPhoneNo"]."</td>
      <td >".$row["workerEmail"]."</td>
      <td >".$row["workerType"]."</td>
      <td >".$row["workerStatus"]."</td>
      <td> <a href='http://localhost/VAALHANDS/worker/workerProfile.php?id=$id'> Check Profile </a> </td>
    </tr>";     
}
?>
</table>
</div>
</body>
</html>

in adminProcess.php

 ysqli_query($conn,  $status = $_POST["status"];  
        $userID= $_POST["patriotIDtoDelete"];
        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE patriot_data set patriotStatus ='$status'  WHERE patriotID='$patriotID'";
        $result = m $sql);


 $status = $_POST["status"];  
        $hmID= $_POST["patriotIDtoDelete"];
        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE workerdata set workerStatus ='$status'  WHERE workerID='$workerID' ";
        $result = mysqli_query($conn, $sql); 

    
in adminHome.php

session_start();
$conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
$sql = "SELECT * FROM request_data  ";
$query_run = mysqli_query($conn,$sql);
while ($row = mysqli_fetch_array($query_run))
{    
    echo  "<ul> <li> "."[Req ID : ".$row["requestID"]."] - Problem Description  : ".$row["problemDescription"]."  #Posted On [".$row["postDate"]."- ".$row["postTime"].
    " ]<br> </li>  </ul>";     
}

in patriot folder

 $newProblemDescription = $_POST["problemDescription"];
    $newPostDate = $_POST["postDate"];
    $newPostTime= $_POST["postTime"];
    $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE request_data set problemDescription ='$newProblemDescription' , postDate ='$newPostDate',postTime ='$newPostTime' WHERE requestID='$reqID';";
        $result = mysqli_query($conn, $sql);

 $reqID = $_SESSION["reqID"];
    $newProblemType = $_POST["problemType"];
    $newPostDate = $_POST["postDate"];
    $newPostTime= $_POST["postTime"];

    $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
    $sql = "UPDATE request_data set problemType ='$newProblemType', postDate ='$newPostDate',postTime ='$newPostTime'  WHERE requestID='$reqID';";
    $result = mysqli_query($conn, $sql);

 $reqID = $_SESSION["reqID"];
    $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
    $sql = "SELECT * from request_data WHERE requestID='$reqID' ";
    $query_run = mysqli_query($conn,$sql);
    $row = mysqli_fetch_array($query_run);
    if($row["pickedUpBy"] =="")
    {
        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "DELETE from request_data WHERE requestID='$reqID' and pickedUpBy='' ";
        $result = mysqli_query($conn, $sql);
        if($result)
        {
            $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');   
            $tableName = "Temp_Bids_".$reqID;   
            $sql = "DROP table $tableName";
            $result = mysqli_query($conn, $sql);
        
session_start();
$patriotID = $_SESSION["patriotID"];
$conn = mysqli_connect('localhost' , 'root', '', 'vaalhands');
$sql1 =  "SELECT * FROM request_data WHERE patriotID = '$patriotID'";
$query_run = mysqli_query($conn, $sql1);


 $reqID =  $_POST["requestID"] ;
      $sql2 = "SELECT * FROM request_data Where requestID ='$reqID' ";
      $query_run = mysqli_query($conn,$sql2);
      $row2 = mysqli_fetch_array($query_run);


$phoneOrEmail = $_SESSION["phoneOrEmail"];

$conn = mysqli_connect('localhost' , 'root' , '' , 'VAALHANDS');
$query = "SELECT * FROM patriot_data WHERE patriotEmail='$phoneOrEmail' or userPhoneNo='$phoneOrEmail'";
$query_run = mysqli_query($conn,$query);



$patriotID = $_SESSION["patriotID"];
$conn = mysqli_connect('localhost' ,'root','','VAALHANDS');
$sql = "SELECT * FROM request_data WHERE patriotID = '$patriotID'";
$query_run = mysqli_query($conn,$sql);




$reqID = $_POST["requestID"];
$workerID = $POST["workerID"];
$conn = mysqli_connect('localhost', 'root', '' , 'vaalhands');
$sql = "SELECT * FROM request_data where requestID = '$reqID' and pickedUpBy=''";  
$query_run = mysqli_query( $conn,$sql);
$row = mysqli_fetch_array($query_run);

if($row != null)
{
    $reqID = $_POST["requestID"];
    $workerID = $_POST["workerID"];
    $conn = mysqli_connect('localhost' , 'root' , '' , 'vaalhands');
    $sql = "SELECT * from workerdata where workerID='$workerID'";
    $result = mysqli_query($conn, $sql);
    $count = mysqli_num_rows($result);




    $conn = mysqli_connect('localhost' , 'root', '', 'vaalhands');
    $sql = "UPDATE request_data set pickedUpBy = '$workerID' where requestID = '$reqID'";
    $result = mysqli_query($conn ,$sql);




    $conn = mysqli_connect('localhost', 'root', '', 'vaalhands');
    $tableName = "Temp_Bids_".$reqID;
    $sql = "DROP Table $tableName";
    $result = mysqli_query($conn, $sql);




    session_start();
    $pariotID = $_SESSION["patriotID"];
    $conn = mysqli_connect('localhost', 'root', '', 'vaalhands');
    $sql = "SELECT * FROM request_data where patriotID = '$patriotID' and pickedUpBy=''";
    $query_run = mysqli_query($conn,$sql);

    while ($row = mysqli_fetch_array($query_run))
    {
        $tableName = "Temp_Bids_".$row["requestID"];
        $requestID = $row["requestID"];
        echo "OFFERS FOR REQ ID :". $requestID."<br><br>";
        $sql1 = "SELECT * FROM $tableName ORDER BY bidAmount ASC";
        $query_run1 = mysqli_query($conn,$sql1);


$userID = $_SESSION["PatriotID"];
$newPatriotName = $_POST["newPatriotName"];
$newPatriotEmail = $_POST["newPatriotEmail"];
$newPatriotPhoneNo = $_POST["newPatriotPhoneNo"];
$newPatriotAddress = $_POST["newPatriotAddress"];
$patriotNewPassword = $_POST["patriotNewPassword"];

if(isset($_POST["newPatriotName"]))
{
    if($_POST["newPatriot"]!= $_SESSION["patriotName"])
    {
    if(preg_match("/^[a-zA-Z-' ]*$/",$_POST["newUserName"]))
    {

        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE patriot_data set patriotName ='$newPatriotName'  WHERE patriotID='$patriotID';";
        $result = mysqli_query($conn, $sql);




 $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE patriot_data set patriotAddress ='$newPatriotAddress' WHERE patriotID='$patriotID' ";
        $result = mysqli_query($conn, $sql);



 $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
    $sql = "UPDATE patriot_data set patriotEmail ='$newPatriotEmail'  WHERE patriotID='$patriotID' ";
    $result = mysqli_query($conn, $sql);



   $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
    $sql = "UPDATE patriot_data set patriotPhoneNo ='$newPatriotPhoneNo'  WHERE patriotID='$patriotID' ";
    $result = mysqli_query($conn, $sql);
 

 $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
          $sql = "UPDATE patriot_data set patriotPassword ='$patriotNewPassword'  WHERE patriotID='$patriotID' ";
          $result = mysqli_query($conn, $sql); 

  $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
    $sql = "DELETE from patriot_data WHERE patriotID='$patriotID' and patriotPassword='$patriotPasswordForDeletion' ";
    $result = mysqli_query($conn, $sql);
   


 $requestedBy = $_SESSION["patriotName"];
        $problemDescription = $_POST["problemDescription"];
        $problemType = $_POST["problemType"];
        $postDate = $_POST["postDate"];
        $postTime = $_POST["postTime"];
        
        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
      $sql = "INSERT INTO request_data (patriotID, requestedBy, problemDescription, problemType, postDate,postTime) VALUES ('$userID','$requestedBy','$problemDescription'
      ,'$problemType','$postDate','$postTime')";
       $result = mysqli_query($conn, $sql);



 $sql2 = "SELECT * FROM request_data Where patriotID ='$patriotID' and postTime = '$postTime'";
            $query_run = mysqli_query($conn,$sql2);
            $rows = mysqli_fetch_array($query_run);
            $requestID = $rows["requestID"];
            $tableName = "Temp_Bids_".$requestID;
             $sql3 = "CREATE TABLE $tableName (requestID varchar(30) NOT NULL, bidAmount varchar(10) NOT NULL , workerID varchar(5) NOT NULL , additionalMessage text NOT NULL)";
             $result2 = mysqli_query($conn, $sql3);


in workers folder:
in workerProfile.php


 $conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
    $sql = "SELECT * from comments where workerID = '$workerID'";
    $query_run = mysqli_query($conn,$sql);
while ($row = mysqli_fetch_array($query_run))
{
$GLOBALS["rating"]= ($row["rating"]+$GLOBALS["rating"]);
$GLOBALS["count"]++;
}
$rating =round($GLOBALS["rating"]/ $GLOBALS["count"] , 3);
$sql ="UPDATE workerdata set workerRating= '$rating' where workerID=$workerID";
$query_run = mysqli_query($conn, $sql);


 $conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
    $sql = "SELECT * FROM workerdata Where workerID ='$workerID' ";
    $query_run = mysqli_query($conn,$sql);
    while ($row = mysqli_fetch_array($query_run))
    {    
        echo "ID : ".$row["workerID"]."<br>";
        echo "Name : ".$row["workerName"]."<br>";
        echo "Rating : ".getRating($row["workerID"])."<br>";
        echo "Phone No : ".$row["workerPhoneNo"]."<br>";
        echo "Email : ".$row["workerEmail"]."<br>";
        echo "Type : ".$row["workerType"]."<br>";
        echo "Job Completed : ".$row["jobCompleted"]."<br>";
        echo "Total Reviews : ".$GLOBALS["count"]."<br>";


  date_default_timezone_set('Africa/Johhanesburg'); 
    $comment = $_POST["comment"];
    $rating = $_POST["rating"];
    $patriotID = $_SESSION["patriotID"];
    $commentDate = date('d/m/y');
    $commentTime = date('h:i:s');
    $workerID = $_SESSION["workerID"];

    $conn = mysqli_connect('localhost' , 'root', '', 'vaalhands');
    $sql = "INSERT INTO comments (hmID, userID, comment, rating, commentDate, commentTime) VALUES ('$hmID','$userID'
    ,'$comment','$rating','$commentDate','$commentTime')";


 session_start();
$hmID = $_SESSION["workerID"];
$conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
$query = "SELECT * FROM request_data WHERE  pickedUpBy='$workerID' and problemCompleted!='DONE' ";
$query_run = mysqli_query($conn,$query);
while ($row = mysqli_fetch_array($query_run))


 $requestID = $_POST["requestID"];
    $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
    $sql = "SELECT * from request_data where requestID = '$requestID'";
    $query_run = mysqli_query($conn,$sql);
    $row = mysqli_fetch_array($query_run);
    if($row != null)
    {
        $_SESSION["requestID"] = $row["requestID"];
        $_SESSION["problemDescription"] = $row["problemDescription"];
        $_SESSION["problemType"] = $row["problemType"];
          
                $userID = $row["patriotID"];
                $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
                $sql = "SELECT * from patriot_data where patriotID = '$patriotID'";
                $query_run = mysqli_query($conn,$sql);
                $row2 = mysqli_fetch_array($query_run);


 $requestID = $_SESSION["requestID"];   
        $offeredPrice = $_POST["offeredPrice"];
        $workerID = $_SESSION["workerID"];
        $message = $_POST["additionalMessage"];
        $tableName = "temp_bids_".$requestID;
        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "INSERT INTO $tableName (requestID, bidAmount, workerID, additionalMessage) VALUES ('$requestID' , '$offeredPrice' , '$workerID', '$message' );";
        


 
            $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhand');
            $sql = "SELECT * from request_data where requestID = '$requestID'";
            $query_run = mysqli_query($conn,$sql);
            $row2 = mysqli_fetch_array($query_run);
            if($row2 !=null)
            {
                $problemCompleted = $_POST["problemCompleted"];
                $sql = "UPDATE request_data set problemCompleted ='$problemCompleted'  WHERE requestID='$requestID' ";
               

$requestID = $_POST["requestID"];
        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "SELECT * from request_data where requestID = '$requestID'";
        $query_run = mysqli_query($conn,$sql);
        $row2 = mysqli_fetch_array($query_run);
        if($row2 !=null)
        {  
            $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
            $problemCompleted ='DONE';
            $sql = "UPDATE request_data set problemCompleted ='$problemCompleted' WHERE requestID='$requestID' ";
            $result = mysqli_query($conn, $sql);   
               if($result)
               {
                 $workerID = $_SESSION["workerID"]; 
                 $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
                 $sql = "UPDATE workerdata set jobCompleted =jobCompleted +1  WHERE workerID='$workerID' ";
                



$conn = mysqli_connect('localhost', 'root', '', 'vaalhands');
$sql = "UPDATE workerdata set workerName = '$newWorkerName' where workerID='$workerID';";
$result = mysqli_query($conn, $sql);



$conn = mysqli_connect('localhost', 'root', '', 'vaalhands');
    $sql = "UPDATE workerdata set workerAddress = '$newWorkerAddress' WHERE workerID='$workerID'";
    $result = mysqli_query($conn,$sql);


 $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE workerdata set workerEmail ='$newWorkerEmail'  WHERE workerID='$workerID' ";
        $result = mysqli_query($conn, $sql);


$conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE workerdata set workerPhoneNo ='$newWorkerPhoneNo'  WHERE workerID='$workerID' ";
        $result = mysqli_query($conn, $sql);
       


  $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE workerdata set workerType ='$workerNewType'  WHERE workerID='$workerID' ";
        $result = mysqli_query($conn, $sql); 
        


 $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "UPDATE workerdata set workerPassword ='$workerNewPassword'  WHERE workerID='$workerID' ";
        $result = mysqli_query($conn, $sql);  
     


  session_start();
    $userPasswordForDeletion = $_POST["workerPasswordForDeletion"];
    $userID = $_SESSION["workerID"];
    if($_POST["workerPasswordForDeletion"] == $_SESSION["workerPassword"])
    {
        $conn = mysqli_connect( 'localhost' , 'root', '', 'vaalhands');
        $sql = "DELETE from workerdata WHERE workerID='$userID' and workerPassword='$userPasswordForDeletion' ";
        $result = mysqli_query($conn, $sql);  
      


 $phoneOrEmail = $_SESSION["phoneOrEmail"];
   
    $conn = mysqli_connect( 'localhost' ,'root','','vaalahands');
    $query = "SELECT * FROM workerdata WHERE workerEmail='$phoneOrEmail' or workerPhoneNo='$phoneOrEmail' ";
    $query_run = mysqli_query($conn,$query);




$problemType = substr($_SESSION["workerType"],0,4);
$conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
$sql = "SELECT * FROM request_data Where problemType like '$problemType%' and pickedUpBy='' ";
$query_run = mysqli_query($conn,$sql);



$hmID = $_SESSION["workerID"];
            $conn = mysqli_connect( 'localhost' ,'root','','vaalhands');
            $query = "SELECT * FROM comments WHERE workerID='$workerID' ";
            $query_run = mysqli_query($conn,$query);




$workID = $_SESSION["workerID"];
$conn = mysqli_connect('localhost', 'root', '', 'vaalhands');
$query = "SELECT * FROM comments WHERE workerID='$workerID'";
$query_run = mysqli_query($conn,$query);








