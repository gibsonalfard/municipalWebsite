
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Home - City of Orlando</title>

    <!-- Bootstrap core CSS -->
    <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
    <link href="<?php echo get_bloginfo('template_directory'); ?>/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<?php echo get_bloginfo('template_directory'); ?>/css/blog.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php wp_head();?>
  </head>

  <body>
    <div class="blog-header">
        <div class="overlay">
          <div class="col-sm-4">
            <img class="img img-logo" src="<?php echo get_bloginfo('template_directory'); ?>/asset/LogoOrlando.png"/>
          </div>
          <div class="col-sm-push-1 col-sm-5 img-logo">
            <div class="input-group">
              <input type="text" class="form-control search" placeholder="Find almost anything on our website">
              <span class="input-group-btn">
                <button class="btn btn-primary search" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></i></button>
              </span>
            </div><!-- /input-group -->
          </div>
        </div>
        </div>
    </div>
    <div class="container">
        <div class="row">

            <div class="col-sm-8 blog-main">
            
            </div><!-- /.blog-main -->

        </div><!-- /.row -->

    </div><!-- /.container -->

    <footer class="blog-footer">
      <p>Blog template built for <a href="http://getbootstrap.com">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<?php echo get_bloginfo('template_directory'); ?>/js/jquery.min.js"></script>
    <script src="<?php echo get_bloginfo('template_directory'); ?>/js/bootstrap.min.js"></script>
    <?php wp_footer(); ?>
  </body>
</html>
