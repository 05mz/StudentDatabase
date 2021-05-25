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
$usn = $_POST['usn'];


if ($conn) {

      $sql = "CALL stored_procedure('$x')";
      $result = mysqli_query($conn, $sql);

?>


      <div class="student-info">
            <h1> STUDENT DETAILS </h1>
            <br>
            <br>
            <?php if (mysqli_num_rows($result) == 0) { ?>
                  <h5 class="alert alert-danger" style="width:700px;">
                        <?php echo "RESULT OF THE STUDENT NOT FOUND "; ?> </h5>

            <?php }
            while ($row = mysqli_fetch_assoc($result)) {

                  $usn = $row["usn"];
                  $name = $row["name"];
                  $dept_id = $row["dept_id"];
                  $phone = $row["phone"];
                  $address = $row["address"];
                  $sem = $row['sem'];
                  $batch = $row["batch"];
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
                              <td><span class="sisub-headings"><b>Department_id</b></span></td>
                              <td><?php echo ($dept_id); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>phone</b></span></td>
                              <td><?php echo ($phone); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Address</b></span></td>
                              <td><?php echo ($address); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Semester</b></span></td>
                              <td><?php echo ($sem); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Batch</b></span></td>
                              <td><?php echo ($batch); ?></td>

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
      <br>


      <?php
      include 'venders/footer.php'
      ?>





      <!-- CREATE PROCEDURE STORED OPROCEDURE (IN USN VARCAHR(10))
BEGIN
SELECT S.NAME S.PHONE,S.ADRESS,R.SEM,R.RESULT FROM
STUDENT S , RESULT R WHERE S.USN=R.USN AND S.USN=usn
END;  -->