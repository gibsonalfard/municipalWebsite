
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="<?php echo get_bloginfo('template_directory'); ?>/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<?php echo get_bloginfo('template_directory'); ?>/blog.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        
    </script>
  </head>

  <body>

    <div class="blog-masthead">
      <div class="container">
        <nav class="blog-nav">
          <a class="blog-nav-item active" href="#">Home</a>
          <a class="blog-nav-item" href="#">New features</a>
          <a class="blog-nav-item" href="#">Press</a>
          <a class="blog-nav-item" href="#">New hires</a>
          <a class="blog-nav-item" href="#">About</a>
        </nav>
      </div>
    </div>

    <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">The Bootstrap Blog</h1>
        <p class="lead blog-description">The official example template of creating a blog with Bootstrap.</p>
      </div>

      <div class="row">

        <div class="col-md-12 blog-content">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#">Do it Online</a></li>
              <li><a data-toggle="tab" href="#">Event</a></li>
            </ul>
            <div class="tab-content">
              <div id="doItOnline">
                <div class="row">
                  <div class="panel panel-default col-md-4">
                    <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/1.png"></div>
                    <div class = "content col-md-9">
                        <h2>Report a Problem</h2>
                        <div class="preview">Report graffiti, a problem tree or missed garbage pick up</div>
                    </div>
                  </div>
                  <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/2.png"></div>
                        <div class = "content col-md-9">
                        <h2>Building & Development</h2>
                        <div class="preview">Report a code enforcement violation, apply for a permit and find your property's zoning category</div>
                      </div>
                  </div>
                  <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/3.png"></div>
                        <div class = "content col-md-9">
                        <h2>Parking & Environment</h2>
                        <div class="preview">Report a code enforcement violation, apply for a permit and find your property's zoning category<div>ly for a permit and find your property's zoning category</div>
                      </div>
                  </div>
                </div>
                <div class="row">
                  <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/4.png"></div>
                        <div class = "content col-md-9">
                        <h2>Trash & Recycling</h2>
                        <div class="preview">View garbage pick up schedules, request a free composter and schedule large item pick up</div>
                      </div>
                  </div>
                  <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/5.png"></div>
                        <div class = "content col-md-9">
                        <h2>Parks & Environment</h2>
                        <div class="preview">Find parks and neighborhoos centers, report a problem tree and reserve a park</div>
                      </div>
                  </div>
                  <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/6.png"></div>
                        <div class = "content col-md-9">
                       <h2>Public Safety</h2>
                        <div class="preview">Public safety services provided by the Orlando Police Departement and the Orlando Fire Departement</div>
                      </div>
                  </div>
                </div>
                <div class="row">
                 <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/7.png"></div>
                        <div class = "content col-md-9">
                        <h2>Community Programs & Events</h2>
                        <div class="preview">Learn about events, register for summer camp and volunteer with the City of Orlando</div>
                      </div>
                  </div>
                  <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/8.png"></div>
                        <div class = "content col-md-9">
                         <h2>Our Government</h2>
                        <div class="preview">Request a public record, apply for a city job and read the lastest news from the City of Orlando</div>
                      </div>
                  </div>
                  <div class="panel panel-default col-md-4">
                     <div class = "col-md-3"><img class="box_image" src="<?php echo get_bloginfo('template_url')?>/9.png"></div>
                        <div class = "content col-md-9">
                        <h2>Explore Your Neighborhood</h2>
                        <div class="preview">Discover city parks & facilities, elected officials and garbage pick up days based on your address</div>
                      </div>
                  </div>
                </div>
                
              </div>
            </div>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>
