<?php
include 'venders/header.php'
?>



<?php
include 'venders/navbar.php'
?>

<?php

require_once 'text.php';
session_start();
$x = $_SESSION['usn'];
$usn = $_POST['usn'];


if ($conn) {

      $sql = "CALL stored_procedure6('$x')";
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
                  $name1 = $row["name"];
                  $dept_id = $row["dept_id"];
                  $sem = $row['sem'];
                  $batch = $row['batch'];
                  $subject1 = $row["Subject1"];
                  $subject2 = $row["Subject2"];
                  $subject3 = $row["Subject3"];
                  $subject4 = $row["Subject4"];
                  $subject5 = $row["Subject5"];
                  $subject6 = $row["Subject6"];
                  $result = $row['total'];
                  $percentage = $row['per'];
                  $rank = $row['rank'];




            ?>

                  <table style="width:65%;">
                        <tr>
                              <td><span class="sisub-headings"><b>USN</b></span></td>
                              <td> <?php echo ($usn); ?></td>
                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Name</b></span></td>
                              <td><?php echo ($name1); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Department</b></span></td>
                              <td><?php echo ($dept_id); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Batch</b></span></td>
                              <td><?php echo ($batch); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Semester</b></span></td>
                              <td><?php echo ($sem); ?></td>

                        </tr>


                        <tr>
                              <td><span class="sisub-headings"><b>Total</b></span></td>
                              <td><?php echo ($result); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>Percentage</b></span></td>
                              <td><?php echo ($percentage); ?></td>

                        </tr>
                        <tr>
                              <td><span class="sisub-headings"><b>rank</b></span></td>
                              <td><?php echo ($rank); ?></td>

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


      <?php
      include 'venders/footer.php'
      ?>





      <!-- CREATE PROCEDURE STORED OPROCEDURE (IN USN VARCAHR(10))
BEGIN
SELECT S.NAME S.PHONE,S.ADRESS,R.SEM,R.RESULT FROM
STUDENT S , RESULT R WHERE S.USN=R.USN AND S.USN=usn
END; -->

      <!-- DELIMITER //
CREATE procedure stored_procedure2(IN usn varchar(10))
BEGIN
	SELECT s.usn,s.email,s.dept_id,s.phone,s.address,s.sem,s.batch,s.gender,ca.description,exa.content,sm.Subject1,sm.Subject2,sm.Subject3,sm.Subject4,sm.Subject5,sm.Subject6
    from student s,cocurricular_activities ca , extra_curricular_activities exa ,subject_marks sm
	where s.usn=ca.usn AND ca.usn=exa.usn and exa.usn=sm.usn AND usn=usn;
END//
DELIMITER ;

Call stored_procedure2 ('1DT18CS065'); -->

      <!-- CREATE procedure stored_procedure4(IN usn varchar(10)) 
      BEGIN 
      SELECT s.usn,s.email,s.dept_id,s.phone,s.address,s.sem,s.batch,s.gender,ca.description,exa.content,sm.Subject1,sm.Subject2,sm.Subject3,sm.Subject4,sm.Subject5,sm.Subject6 from student s,cocurricular_activities ca , extra_curricular_activities exa ,subject_marks sm where s.usn=ca.usn AND ca.usn=exa.usn and exa.usn=sm.usn AND s.usn=usn; 
      END -->