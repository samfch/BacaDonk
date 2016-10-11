<!DOCTYPE html>
<?php
require_once 'config.php';
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
                    <div class="card">
                        <div class="card-content">
                            <p class="flow-text">Add Article</p>
                            <div class="row">
                                <form class="col s12" action="insert.php" method="post">
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="title" name="title" type="text" class="validate">
                                            <label for="title">Title</label>
                                        </div>
                                        <div class="input-field col s12">
                                            <textarea id="content" name="content" class="materialize-textarea"></textarea>
                                            <label for="content">Content</label>
                                        </div>
                                        <div class="input-field col s12">
                                            <select name="author" class="browser-default">
                                                <option value="" disabled selected>Choose author</option>
                                                <option value="admin">Admin</option>
                                                <option value="operator">Operator</option>
                                                <option value="student">Student</option>
                                            </select>
                                        </div>
                                        <div class="input-field col s12">
                                            <br/>
                                            <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                                                <i class="material-icons right">send</i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
        <script>
            $('#content').trigger('autoresize');
        </script>
    </body>
</html>
