<!DOCTYPE html>
<?php
require_once 'config.php';
$id = $_GET['id'];
?>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body class="blue-grey lighten-5">

        <div class="container">
            <div class="row">
                <div class="col s12 m6 l8 offset-l2">
                    <?php
                    if (!empty($id)){
                        $db->where ("id", $id);
                        $article = $db->getOne('articles');
                    } else {
                        header("index.php");
                    }
                    ?>
                    <div class="card">
                        <div class="card-content">
                            <div class="row">
                                <div class="col s2 m1 l1">
                                    <img src="http://placekitten.com/60/60" alt="" class="circle responsive-img"> <!-- notice the "circle" class -->
                                </div>
                                <div class="col s10 m11 l11">
                                    <span class="grey-text">
                                        by: <?php echo $article['author']; ?>
                                    </span>
                                </div>
                            </div>
                            <span class="card-title"><?php echo $article['title']; ?></span>
                            <div class="blue-grey-text lighten-2">
                                <?php echo $article['content']; ?>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
    </body>
</html>
