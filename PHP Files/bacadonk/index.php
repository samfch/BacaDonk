<!DOCTYPE html>
<?php
require_once 'config.php';
?>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
        <!--Import materialize.css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style>
            #header_title{
                font-family: 'Kaushan Script', cursive;
            }
        </style>
    </head>

    <body class="blue-grey lighten-5">

        <div class="container">
            <div class="row">
                <div class="col s12 m6 l8 offset-l2">
                    <div class="center-align deep-orange-text darken-3" id="header_title">
                        <span style="font-size: 80px">BacaDonk News</span>
                    </div>
                    <br/>
                    <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
                        <a class="btn-floating btn-large red">
                            <i class="large material-icons">menu</i>
                        </a>
                        <ul>
                            <li><a href="add.php" class="btn-floating red"><i class="material-icons">add</i></a></li>
                            <li><a href="json.php" class="btn-floating green"><i class="material-icons">code</i></a></li>
                        </ul>
                    </div>
                    <?php
                    $db->orderBy("id", "desc");
                    $articles = $db->get('articles', 10);

                    foreach ($articles as $article) :
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
                                    <?php echo substr($article['content'], 1, 200) . "..."; ?>
                                </div>

                            </div>
                            <div class="card-action grey lighten-5">
                                <a href="view.php?id=<?php echo $article['id']; ?>" class="grey-text">Read More</a>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>


        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
    </body>
</html>
