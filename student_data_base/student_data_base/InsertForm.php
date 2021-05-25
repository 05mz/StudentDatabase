<html>

<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>DSATM</title>

      <link rel="stylesheet" href="resources/css/style.css">
      <!-- Bootstrap and its dependencies -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

      <link rel="stylesheet" href="./resources/css/style.css">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">




</head>

<body>


      <nav class="navbar navbar-dark bg-dark">
            <div class="container-fluid">
                  <a class="navbar-brand" href="index.html"><img id="dsatm" src="https://www.dsatm.edu.in/templates/dsce/images/dsatm_logo.png"></a>
            </div>
      </nav>
      <div class="container">
            <h1>enter the student detail</h1>
      </div>

      <form action="" class="was-validated marginLeft marginRight" method="POST">

            <div class="row">
                  <div class="form-group col">
                        <label for="uname">USN:</label>
                        <input type="text" class="form-control" id="uname" placeholder="Enter student USN" name="stu_usn" required>
                        <div class="valid-feedback"></div>

                        <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group col">
                        <label for="name">Name:</label>
                        <input type="test" class="form-control" id="name" placeholder="Enter Student Name" name="name" required>
                        <div class="valid-feedback"></div>

                        <div class="invalid-feedback"></div>
                  </div>
            </div>
            <div class="row">
                  <div class="form-group col">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" required>
                        <div class="valid-feedback"></div>

                        <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group col">
                        <label for="deptId">Department ID:</label>
                        <input type="number" class="form-control" id="deptId" placeholder="Enter Department Id" name="deptId" required>
                        <div class="valid-feedback"></div>

                        <div class="invalid-feedback"></div>
                  </div>
            </div>
            <div class="row">
                  <div class="form-group col">
                        <label for="phone">Phone:</label>
                        <input type="text" class="form-control" id="uname" placeholder="Enter Phone" name="phone" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group col">
                        <label for="gender">Gender:</label>
                        <input type="text" class="form-control" id="gender" placeholder="Enter gender" name="gender" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>
            </div>
            <div class="form-outline mb-4">
                  <label class="form-label" for="form6Example7">Address</label>
                  <textarea class="form-control" id="form6Example7" rows="4" name="address"></textarea>
                  <div class="valid-feedback"></div>

                  <div class="invalid-feedback"></div>

            </div>
            <div class="row">
                  <div class="form-group col">
                        <label for="sem">Semester</label>
                        <input type="text" class="form-control" id="uname" placeholder="Enter Student Semester" name="sem" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group col">
                        <label for="batch">Enter the batch :</label>
                        <input type="text" class="form-control" id="batch" placeholder="Enter the college period." name="batch" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>
            </div>
            <div class="form-group ">
                  <label for="sgpa">Enter the SGPA :</label>
                  <input type="text" class="form-control" id="sgpa" placeholder="Enter the SGPA :" name="sgpa" required>
                  <div class="valid-feedback"></div>
                  <div class="invalid-feedback"></div>
            </div>
            <div class="row">
                  <div class="form-group col">
                        <label for="Subject1">Subject 1 marks :</label>
                        <input type="text" class="form-control" id="Subject1" placeholder="Enter Student Subject1 marks" name="Subject1" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group col">
                        <label for="Subject2">Subject 2 marks :</label>
                        <input type="text" class="form-control" id="Subject2" placeholder="Enter Student Subject1 marks" name="Subject2" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>

            </div>
            <div class="row">
                  <div class="form-group col">
                        <label for="Subject3">Subject 3 marks :</label>
                        <input type="text" class="form-control" id="Subject3" placeholder="Enter Student Subject3 marks" name="Subject3" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group col">
                        <label for="Subject4">Subject 4 marks :</label>
                        <input type="text" class="form-control" id="Subject4" placeholder="Enter Student Subject4 marks" name="Subject4" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>

            </div>
            <div class="row">
                  <div class="form-group col">
                        <label for="Subject5">Subject 5 marks :</label>
                        <input type="text" class="form-control" id="Subject5" placeholder="Enter Student Subject5 marks" name="Subject5" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>
                  <div class="form-group col">
                        <label for="Subject6">Subject 6 marks :</label>
                        <input type="text" class="form-control" id="Subject6" placeholder="Enter Student Subject6 marks" name="Subject6" required>
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback"></div>
                  </div>

            </div>
            <div class="form-outline mb-4">
                  <label class="form-label" for="form6Example7">cocurriculaar Activities</label>
                  <textarea class="form-control" id="form6Example7" rows="4" name="description"></textarea>
                  <div class="valid-feedback"></div>

                  <div class="invalid-feedback"></div>

            </div>
            <div class="form-outline mb-4">
                  <label class="form-label" for="form6Example7">Extra-cocurriculaar Activities</label>
                  <textarea class="form-control" id="form6Example7" rows="4" name="description"></textarea>
                  <div class="valid-feedback"></div>

                  <div class="invalid-feedback"></div>

            </div>

            <button type="submit" name="submit" class="btn btn-primary">Submit</button>


      </form>








      <br>
      <br>
      <br>
      <br>
      <br>
      <style>
            .subtext {
                  margin-left: 160px;

            }

            .submitbutton {
                  margin-right: 160px;

            }

            .marginLeft {
                  margin-left: 50px;
            }

            .marginRight {
                  margin-right: 50px;
            }
      </style>







</body>

<footer id="footer">
      <div class="container">
            <p class="text-muted"><a style="text-decoration: none;color: rgba(237,237,237,0.54);" href="https://www.dsatm.edu.in/index.php/maps-directions">Maps &amp;
                        Direction</a>&nbsp;&nbsp;|&nbsp;&nbsp;&copy; DSATM P I 2020&nbsp;&nbsp;|&nbsp;&nbsp;<a style="text-decoration: none;color: rgba(237,237,237,0.54);;" href="https://www.dsatm.edu.in/index.php/terms-of-use">Terms of Use</a></p>
      </div>
</footer>

<!-- Custom JS for search feature -->
<script src="/scripts/search.js" async defer></script>

</html>



<?php
include 'text.php';



if (isset($_POST['submit'])) {
      $usn = $_POST['stu_usn'];
      $name = $_POST['name'];
      $email = $_POST['email'];
      $deptId = $_POST['deptId'];
      $phone = $_POST['phone'];
      $gender = $_POST['gender'];
      $address = $_POST['address'];
      $sem = $_POST['sem'];
      $batch = $_POST['batch'];
      $sgpa = $_POST['sgpa'];
      $Subject1 = $_POST['Subject1'];
      $Subject2 = $_POST['Subject2'];
      $Subject3 = $_POST['Subject3'];
      $Subject4 = $_POST['Subject4'];
      $Subject5 = $_POST['Subject5'];
      $Subject6 = $_POST['Subject6'];

      $description = $_POST['description'];
      $insertQuery = "INSERT INTO student(usn, name, email, dept_id, phone, address, sem, batch, gender) VALUES ('$usn','$name','$email','$deptId','$phone','$address','$sem','$batch','$gender')";
      $insertQuery1 = "INSERT INTO subject_marks(usn,Subject1,Subject2,Subject3,Subject4,Subject5,Subject6) VALUES ('$usn','$Subject1','$Subject2','$Subject3','$Subject4','$Subject5','$Subject6')";
      $sqlQuery = $insertQuery . ";" . $insertQuery1;

      $res = mysqli_multi_query($conn, $sqlQuery);


      if ($res) {
?>
            <script>
                  alert("data inserted properly");
            </script>
      <?php
      } else {
      ?>
            <script>
                  alert("data not inserted properly");
            </script>
<?php
      }
}



?>