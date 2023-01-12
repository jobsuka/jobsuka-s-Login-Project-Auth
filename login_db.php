<?php 

    require_once 'include/connection.php';

    session_start();

    if (isset($_POST['btn_login'])) {
        $email = $_POST['txt_email']; // textbox name 
        $password = $_POST['txt_password']; // password
        $role = $_POST['txt_role']; // select option role
  
        if (empty($email)) {
            $errorMsg[] = "Please enter email";
        } else if (empty($password)) {
            $errorMsg[] = "Please enter password";
        } else if (empty($role)) {
            $errorMsg[] = "Please select role";
        } else if ($email AND $password AND $role) {
            try {
                $select_stmt = $db->prepare("SELECT email, password, role FROM masterlogin WHERE email = :uemail AND password = :upassword AND role = :urole");
                $select_stmt->bindParam(":uemail", $email);
                $select_stmt->bindParam(":upassword", $password);
                $select_stmt->bindParam(":urole", $role);
                $select_stmt->execute(); 

                while($row = $select_stmt->fetch(PDO::FETCH_ASSOC)) {
                    $dbemail = $row['email'];
                    $dbpassword = $row['password'];
                    $dbrole = $row['role'];
                }
                if ($email != null AND $password != null AND $role != null) {
                    if ($select_stmt->rowCount() > 0) {
                        if ($email == $dbemail AND $password == $dbpassword AND $role == $dbrole) {
                            switch($dbrole) {
                                case 'admin':
                                    $_SESSION['admin_login'] = $email;
                                    $_SESSION['success'] = "Admin... Successfully Login...";
                                    header("location: public/admin/admin_home.php");
                                break;
                                case 'model':
                                    $_SESSION['model_login'] = $email;
                                    $_SESSION['success'] = "Model... Successfully Login...";
                                    header("location: public/model/model_home.php");
                                break;
                                case 'member':
                                    $_SESSION['member_login'] = $email;
                                    $_SESSION['success'] = "Member... Successfully Login...";
                                    header("location: public/member/member_home.php");
                                break;
                                case 'agency':
                                    $_SESSION['agency_login'] = $email;
                                    $_SESSION['success'] = "Agency... Successfully Login...";
                                    header("location: public/agency/agency_home.php");
                                break;
                                case 'club':
                                    $_SESSION['club_login'] = $email;
                                    $_SESSION['success'] = "Club... Successfully Login...";
                                    header("location: public/club/club_home.php");
                                break;
                                default:
                                    $_SESSION['error'] = "Wrong email or password or role";
                                    header("location: index.php");
                            }
                        }
                    } else {
                        $_SESSION['error'] = "Wrong email or password or role";
                        header("location: index.php");
                    }
                }
            } catch(PDOException $e) {
                $e->getMessage();
            }
        }
    }

?>