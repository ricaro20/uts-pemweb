<?php

function setComments($con){
    if(isset($_POST['commentSubmit'])){
        $uid = $_POST['uid'];
        $date = $_POST['date'];
        $message = $_POST['message'];

        $sql = "INSERT INTO comments (uid, date, message) VALUES ('$uid','$date','$message')";
        $result = $con->query($sql);
    }
}

function getComments($con){
    $sql = "SELECT * FROM comments";
    $result = $con->query($sql);
    while ($row = $result->fetch_assoc()){
        $id = $row['uid'];
        $s = "SELECT * FROM users WHERE id='$id'";
        $r = $con->query($s);
        if($row2 = $r->fetch_assoc()){
            echo "<div class='comment-box'><p>";
                echo $row2['uid']."<br>";
                echo $row['date']."<br>";
                echo nl2br($row['message']);
            echo "</p>";
                if(isset($_SESSION['id'])){
                    if($_SESSION['id'] == $row2['id']){
                        echo "<form class='delete-form' method='POST' action='".deleteComments($con)."'>
                            <input type='hidden' name='cid' value='".$row['cid']."'>
                            <button type='submit' name='commentDelete'>Delete</button>  
                        </form>
                        <form class='edit-form' method='POST' action='editComment.php'>
                            <input type='hidden' name='cid' value='".$row['cid']."'>
                            <input type='hidden' name='uid' value='".$row['uid']."'>
                            <input type='hidden' name='date' value='".$row['date']."'>
                            <input type='hidden' name='message' value='".$row['message']."'>
                            <button>Edit</button>  
                        </form>";
                    } else {
                        echo "<form class='edit-form' method='POST' action='".deleteComments($con)."'>
                            <input type='hidden' name='cid' value='".$row['cid']."'>
                            <button type='submit' name='commentDelete'>reply</button>  
                        </form>";
                    }
                } else {
                    echo "<p class='commentmessage'>You need to be logged in to reply!</p>";
                }
            echo "</div>";
        }
    }
}

function editComments($con){
    if(isset($_POST['commentSubmit'])){
        $cid = $_POST['cid'];
        $uid = $_POST['uid'];
        $date = $_POST['date'];
        $message = $_POST['message'];

        $sql = "UPDATE comments SET message='$message' WHERE cid='$cid'";
        $result = $con->query($sql);
        header("Location: index.php");
    }
}

function deleteComments($con){
    if(isset($_POST['commentDelete'])){
        $cid = $_POST['cid'];

        $sql = "DELETE FROM comments WHERE cid='$cid'";
        $result = $con->query($sql);
        header("Location: index.php");
    }
}

function getLogin($con){
    if(isset($_POST['loginSubmit'])){
        $uid = $_POST['username'];
        $pwd = $_POST['password'];

        $sql = "SELECT * FROM users WHERE username='$uid' AND password='$pwd'";
        $result = $con->query($sql);
        if(mysqli_num_rows($result) == 1){
            if ($row = $result->fetch_assoc()){
                $_SESSION['id'] = $row['id'];
                header("Location: Home.php?loginsuccess");
                exit();
            }
        } else {
            header("Location: Home.php?loginfailed");
            exit();
        }
    }
}

function userLogout(){
    if(isset($_POST['logoutSubmit'])){
        session_start();
        session_destroy();
        header("Location: Home.php");
        exit();
    }
}