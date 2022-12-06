<?php 
session_start();
include('includes/config.php');
include('functions.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>News Portal | Home Page</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/modern-business.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="Home.php"><img src="images\Logo.png" height="50"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <?php

    if(isset($_SESSION['username'])){
        echo "<form method='POST' action='".userLogout()."'>
        <button type='submit' name='logoutSubmit'>Log Out</button>
    </form>";
    } else {
      echo "<a href='login.php'>Login</a>";
    }
    ?>
      </div>
    </nav>
  </br>


  <!-- Page Content -->
  <div class="container">



    <div class="row" style="margin-top: 4%">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <!-- Blog Post -->
        <?php
$pid=intval($_GET['nid']);
$currenturl="http://".$_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
  $sql = "SELECT tblposts.creator as penulis, tblposts.PostTitle as posttitle,tblposts.PostImage,tblcategory.CategoryName as category,tblcategory.id as cid,tblposts.PostDetails as postdetails,tblposts.PostDetails as postdetails,tblposts.PostingDate as postingdate,tblposts.PostUrl as url from tblposts left join tblcategory on tblcategory.id=tblposts.CategoryId where tblposts.id='$pid'";
 $query=mysqli_query($con,$sql);
while ($row=mysqli_fetch_array($query)) {
?>

        <div class="card mb-4">

          <div class="card-body">

            <h2>
              <p><a
                  href="news-details.php?tleid=<?php echo htmlentities($row['nid'])?>"><?php echo htmlentities($row['posttitle']);?></a>
              </p>
            </h2>
            <p><b>Category : </b> <a
                href="category.php?catid=<?php echo htmlentities($row['cid'])?>"><?php echo htmlentities($row['category']);?></a>
              |
            </p>
            <hr />
            
            <div class="card-footer text-muted">
              Posted on <?php echo htmlentities($row['postingdate']);?>
           
            </div>
            <div class="card-footer text-muted">
              Ditulis Oleh  <?php echo htmlentities($row['penulis']);?>
           
            </div>
            <img class="img-fluid rounded" src="admin/postimages/<?php echo htmlentities($row['PostImage']);?>"
              alt="<?php echo htmlentities($row['posttitle']);?>">

            <p class="card-text"><?php 
              $pt=$row['postdetails'];
              echo  (substr($pt,0));?></p>

          </div>
          <div class="card-footer text-muted">


          </div>
        </div>
        <?php } ?>






      </div>

      <!-- Sidebar Widgets Column -->
      <?php include('includes/sidebar.php');?>
    </div>
    <!-- /.row -->
    <!---Comment Section --->

    <?php

if(isset($_SESSION['username'])){
    echo "<form method='POST' action='".setComments($con)."'>
    <input type='hidden' name='uid' value='".$_SESSION['username']."'>
    <input type='hidden' name='date' value='".date('Y-m-d H:i:s')."'>
    <textarea name='message'></textarea><br>
    <button type='submit' name='commentSubmit'>Comments</button>
</form>";
} else {
    echo "<a href='login.php'>Login</a> dulu kalo mau komen";
}
        getComments($con)
    ?>

        <!---Comment Display Section --->

        <?php 
 $sts=1;
  $query=mysqli_query($con,"SELECT uid,message,date FROM comments");
 while ($row=mysqli_fetch_array($query)) {
 ?>
         <div class="media mb-4">
           <img class="d-flex mr-3 rounded-circle" src="images/usericon.png" alt="">
           <div class="media-body">
             <h5 class="mt-0"><?php echo htmlentities($row['uid']);?> <br />
               <span style="font-size:11px;"> </span>
             </h5>
            <div>
             Posted on <?php echo htmlentities($row['date']);?>
           
            </div>

             <?php echo htmlentities($row['message']);?>
          </div>
        </div>
        <?php } ?>

      </div>
    </div>
  </div>

</body>

</html>