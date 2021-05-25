<?php
include 'venders/header.php'
?>



<?php
include 'venders/navbar.php'
?>
<?php

require_once 'text.php';
session_start();
$x  = $_SESSION['usn'];
// $usn = $_POST['usn'];


if ($conn) {

  $sql = "SELECT * FROM result WHERE usn='$x'";
  $result = mysqli_query($conn, $sql);


?>


  <div class="student-info">
    <h1> STUDENT RESULT </h1>
    <br>
    <br>
    <?php if (mysqli_num_rows($result) == 0) { ?>
      <h5 class="alert alert-danger" style="width:700px;">
        <?php echo "RESULT OF THE STUDENT NOT FOUND "; ?> </h5>

    <?php }
    while ($row = mysqli_fetch_assoc($result)) {

      $usn = $row["usn"];
      $name = $row["name"];
      $sem = $row["sem"];
      $SGPA = $row["SGPA"];





    ?>


      <table style="width:65%;">
        <tr>
          <td><span class="sisub-headings"><b>USN</b></span></td>
          <td> <?php echo ($usn); ?></td>
        </tr>
        <tr>
          <td><span class="sisub-headings"><b>Name</b></span></td>
          <td><?php echo ($name); ?></td>

        </tr>
        <tr>
          <td><span class="sisub-headings"><b>Semester</b></span></td>
          <td><?php echo ($sem); ?></td>

        </tr>
        <tr>
          <td><span class="sisub-headings"><b>SGPA</b></span></td>
          <td><?php echo ($SGPA); ?></td>

        </tr>
      </table>

  <?php


    }
  }
  ?>




  <!-- %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->

  <?php

  require_once 'text.php';
  session_start();
  $x  = $_SESSION['usn'];
  $usn = $_POST['usn'];


  if ($conn) {


    $sql1 = "SELECT * FROM remainder WHERE USN='$x'";
    $result1 = mysqli_query($conn, $sql1);


  ?>


    <div class="student-info1">

      <?php if (mysqli_num_rows($result1) == 0) { ?>
        <h5 class="alert alert-danger" style="width:700px;">
          <?php echo "RESULT OF THE STUDENT NOT FOUND "; ?> </h5>

      <?php }
      while ($row1 = mysqli_fetch_assoc($result1)) {

        $usn = $row1["usn"];
        $message = $row1["message"];





      ?>

        <br>


        <h5 class="alert alert-primary" style="width:705px;">
          <?php echo $message; ?> </h5>

    <?php

      }
    }
    ?>



    <?php
    include 'venders/buttons.php'
    ?>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>



    </div>

    <footer id="footer1">
      <div class="footerMargin">
        <p class="text-muted"><a style="text-decoration: none;color:#000000;" href="https://www.dsatm.edu.in/index.php/maps-directions">Maps &amp; Direction</a>&nbsp;&nbsp;|&nbsp;&nbsp;&copy; DSATM P I 2020&nbsp;&nbsp;|&nbsp;&nbsp;<a style="text-decoration: none;color: #000000;;" href="https://www.dsatm.edu.in/index.php/terms-of-use">Terms of Use</a></p>
      </div>
    </footer>