<?php session_start();
//error_reporting(0);
include_once('includes/config.php');
$rt = mysqli_query($con,"SELECT * FROM tbladmin where ID is not null");
$num4 = mysqli_num_rows($rt); 
if($num4>0){
  header("location:indexs.php");
}
else{
if(isset($_POST['submit']))
{
$name=$_POST['name'];
$username=$_POST['username'];
$password=$_POST['password'];
$email=$_POST['email'];
$number=$_POST['number'];
$type='admin';

$sql=mysqli_query($con,"insert into tbladmin(AdminName,UserName,MobileNumber,Email,Password,type) values('$name','$username','$number','$email','$password','$type')");
echo "<script>alert('Register successfully');</script>";
echo "<script>window.location.href='indexs.php'</script>";

}

?>
<!DOCTYPE html>
<html lang="en">

<head>
  
  <title> WEB BASED SYSTEM OF SENIOR CITIZEN IN LEGAZPI CITY| Registration Page</title>
  <!-- base:css -->
  <link rel="stylesheet" href="admin/vendors/typicons/typicons.css">
  <link rel="stylesheet" href="admin/vendors/css/vendor.bundle.base.css">
 
  <link rel="stylesheet" href="admin/css/vertical-layout-light/style.css">
  <!-- endinject -->
  
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <h3 style="color:seagreen;">SCILC | Admin Registration </h3>
              <h4>Hello! Let's get started</h4>
              <h6 class="font-weight-light">Registration.</h6>
              <form class="pt-3" method="post">
                <div class="form-group">


<div class="form-group">
                  <input type="text" class="form-control form-control-lg border-left-0" id="name" placeholder="Name" name="name" required="true" value="<?php if(isset($_COOKIE["Name"])) { echo $_COOKIE["Name"]; } ?>">
                </div>




                  <input type="text" class="form-control form-control-lg border-left-0" id="username" placeholder="Username" name="username" value="<?php if(isset($_COOKIE["user_login"])) { echo $_COOKIE["user_login"]; } ?>">
                </div>

                <div class="form-group">
                  <input type="password" class="form-control form-control-lg border-left-0" id="password" placeholder="Password" name="password" required="true" value="<?php if(isset($_COOKIE["userpassword"])) { echo $_COOKIE["userpassword"]; } ?>">
                </div>


<div class="form-group">
                  <input type="email" class="form-control form-control-lg border-left-0" id="email" placeholder="Email" name="email" required="true" value="<?php if(isset($_COOKIE["email"])) { echo $_COOKIE["email"]; } ?>">
                </div>



                 <div class="form-group">
                  <input type="number" class="form-control form-control-lg border-left-0" id="number" placeholder="Contact Number" name="number" required="true" value="<?php if(isset($_COOKIE["number"])) { echo $_COOKIE["number"]; } ?>">
                </div>




                
                <div class="mt-3">
                  <button type="submit" class="btn btn-block btn-info btn-lg font-weight-medium auth-form-btn" name="submit">Register</button>
                </div>

                <div class="my-2 d-flex justify-content-between align-items-center">
                
                </div>
               <a href="../index.php" class="auth-link text-black"><b> HOME PAGE </b> </a>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
<?php } ?>