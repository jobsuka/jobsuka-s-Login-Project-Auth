<?php require_once 'connection.php';
try {
                            $select_stmt = $db->prepare("SELECT no_id, username, email FROM masterlogin WHERE no_id = :uno_id OR username = :uname OR email = :uemail");;
                            $select_stmt->bindParam(":uno_id", $userid);
                            $select_stmt->bindParam(":uemail", $email);
                            $select_stmt->bindParam(":uname", $username);
                            $select_stmt->execute();
                            $row = $select_stmt->fetch(PDO::FETCH_ASSOC);
                            
                            if ($row['username'] == $username) {
                                $errorMsg[] = "Sorry username already exists";
                            } else if ($row['email'] == $email) {
                                $errorMsg[] = "Sorry email already exists";
                            } else if (!isset($errorMsg)) {
                                $insert_stmt = $db->prepare("INSERT INTO es_images(userid) VALUES (:uno_id)");
                                $insert_stmt->bindParam(":uno_id", $userid);
                               
                                if ($insert_stmt->execute()) {
                                    $_SESSION['success'] = "Session Successfully...";
                                    header("location: home.php");
                                }
                            }
                            echo "Connected successfully";
                        } catch(PDOException $e) {
                            echo "Connection failed: " . $e->getMessage();
                        }
                    //Set ว/ด/ป เวลา ให้เป็นของประเทศไทย
                        date_default_timezone_set('Asia/Bangkok');



?>