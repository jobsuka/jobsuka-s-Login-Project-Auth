?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"> 
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" media="screen"> 
<script type="text/javascript" src="jquery-1.11.3-jquery.min.js"></script>
<link rel="stylesheet" href="style.css" type="text/css"/>                   
</head>


<body>


<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://www.codingcage.com">Coding Cage</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="http://www.codingcage.com/2015/11/ajax-login-script-with-jquery-php-mysql.html">Back to Article</a></li>
            <li><a href="http://www.codingcage.com/search/label/jQuery">jQuery</a></li>
            <li><a href="http://www.codingcage.com/search/label/PHP">PHP</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            
         <!--   <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
			  <span class="glyphicon glyphicon-user"></span>&nbsp;Hi' <?php echo $userRow['email']; ?>&nbsp;<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;View Profile</a></li>
                <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse 
      </div>
    </nav> -->



    <?php require_once 'public/connect.php';
                            $stmt = $conn->prepare("SELECT* FROM es_images");
                            $stmt->execute();
                            $result = $stmt->fetchAll();
                            foreach($result as $k) {?>
	
  <div class="container">
  
   <label class="h5">welcome : <?php print($_SESSION['model_login'] = $k['no']); ?></label>
   <?php } ?>     
   <hr>

        <h1>
        <a href="home.php"><span class="glyphicon glyphicon-home"></span> home</a> &nbsp; 
        <a href="profile.php"><span class="glyphicon glyphicon-user"></span> profile</a></h1>
        <hr/>
<table class="table table-striped  table-hover table-responsive table-bordered">
                    <?php require_once 'public/connect.php';
                            $stmt = $conn->prepare("SELECT* FROM es_images");
                            $stmt->execute();
                            $result = $stmt->fetchAll();
                            foreach($result as $k) {?>
                        <thead>
                            <tr>
                            <th width="13%">อีเมลผู้ใช้</th>
                            <th width="8%">รหัสผู้ใช้</th>
                                <th width="5%">ลำดับ</th>
                                <th width="65%">ชื่อภาพ</th>
                                <th width="30%">ภาพ</th>
                                
                            </tr>
                        </thead><tr>
<?session_start()?>

<?php 
$Onhand = $k;
$qty = $Onhand;
$Onhand = 10000;
print "$qty = " . $$qty[''];
$m['email'] = $user_id['model_login'];
?>

                               <td><?= $k['email']; 
                               
                               ?></td>
                               <td><?= $k['userid']; 
                               
                               ?></td>
                                <td><?= $k['no']; 
                                   ;?></td>
                                <td><?= $k['img_name'];?></td>
                                <td><img <?=$k['no']= !'*'?> src="public/uploads/<?= $k['img_file'];?>" width="70px"></td>
                
                               
                                <?php } ?>
                                <form>
                           
                      
                                <title>welcome - <td><?= $k['email'] = $_SESSION['model_login'];?></td></title></tr>
                            </tbody>
                </table>
                
                   
    <p class="blockquote-reverse" style="margin-top:200px;">
    Programming Blog Featuring Tutorials on PHP, MySQL, Ajax, jQuery, Web Design and More...<br /><br />
    <a href="http://www.codingcage.com/2015/04/php-login-and-registration-script-with.html">tutorial link</a>
    </p>
    
    </div>

<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
