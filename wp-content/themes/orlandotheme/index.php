
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
  <!-- <link href="<?php echo get_bloginfo('template_directory'); ?>"/css/blog.css" rel="stylesheet"> -->
  <link href="<?php echo get_bloginfo('template_directory'); ?>/css/style.css" rel="stylesheet">
  <link href="<?php echo get_bloginfo('template_directory'); ?>/css/demo.css" rel="stylesheet">
  <link href="<?php echo get_bloginfo('template_directory'); ?>/css/components.css" rel="stylesheet">
  <script src="<?php echo get_bloginfo('template_directory'); ?>/js/modernizr.custom.js"></script>
  <link rel="icon" type="img/png" sizes="32x32" href=<?php echo get_bloginfo('template_directory'); ?>/asset/favicon-32x32.png">
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  <?php wp_head(); ?>
</head>

<body>
  <div class="container">
    <div class="row">
      <!-- Push Wrapper -->
      <div class="mp-pusher" id="mp-pusher">

        <!-- mp-menu -->
        <nav id="mp-menu" class="mp-menu">
          <div class="mp-level">
            <ul>
              <li class="icon icon-arrow-left">
                <a href="#">Home</a>
              </li>
              <li class="icon icon-arrow-left">
                <a href="#">Report a Problem</a>
                <button class="subarrow"></button>
                <div class="mp-level">
                  <a class="mp-back" href="#">back to Report a Problem</a>
                  <ul>
                    <li><a href="#">Report Graffiti</a></li>
                    <li><a href="#">Report a Code Enforcement Violation</a></li>
                    <li><a href="#">Report a Problem Tree</a></li>
                    <li><a href="#">Report a Missed Garbage Cart Pick-Up</a></li>
                    <li><a href="#">Report a Missed Garbage Dumpster Pick-Up</a></li>
                    <li><a href="#">Report Something Broken in a Park</a></li>
                  </ul>
                </div>
              </li>
              <li class="icon icon-arrow-left">
                <a href="#">Building & Development</a>
                <div class="mp-level">
                  <a class="mp-back" href="#">back</a>
                  <ul>
                    <li><a href="#">Permits & Inspections</a></li>
                    <li><a href="#">Code Enforcement & COmpliance</a></li>
                    <li><a href="#">Planning & Zoning Approvals</a></li>
                    <li><a href="#">Housing and Development Grants, Incentives and Assistance</a></li>
                  </ul>
                </div>
              </li>
              <li class="icon icon-arrow-left">
                <a href="#">Parking & Transportation</a>
                <div class="mp-level">
                  <a class="mp-back" href="#">back</a>
                  <ul>
                    <li><a href="#">Permits & Inspections</a></li>
                    <li><a href="#">Code Enforcement & COmpliance</a></li>
                    <li><a href="#">Planning & Zoning Approvals</a></li>
                    <li><a href="#">Housing and Development Grants, Incentives and Assistance</a></li>
                  </ul>
                </div>
              </li>
              <li class="icon icon-arrow-left">
                <a href="#">Trash & Recycling</a>
                <div class="mp-level">
                  <a class="mp-back" href="#">back</a>
                </div>
              </li>
              <li><a href="#">Parks & the Environment</a></li>
              <li><a href="#">Public Safety</a></li>
              <li><a href="#">Community Programs & Events</a></li>
              <li><a href="#">Our Goverment</a></li>
              <li><a href="#">Events</a></li>
              <li><a href="#">My Neighborhood</a></li>
            </ul>

          </div>
        </nav>
        <!-- /mp-menu -->

        <div class="scroller">
          <!-- this is for emulating position fixed of the nav -->
          <div class="scroller-inner">
          </div><!-- /scroller-inner -->
          <div class="content clearfix">
            <div class="main-background">
              <div class="blog-header">
                <div class="overlay">
                  <div class="azra block block-10 clearfix">
                    <p><a href="#" id="trigger" class="menu-trigger"></a></p><span>menu</span>
                  </div>
                  <div class="col-sm-2 col-xs-1">
                    <img class="img img-logo" src="<?php echo get_bloginfo('template_directory'); ?>/asset/LogoOrlando.png" />
                  </div>
                  <div class="col-sm-4 col-xs-1 img-logo">
                    <div class="input-group">
                      <input type="text" class="form-control search" placeholder="Find almost anything on our website">
                      <span class="input-group-btn">
                        <button class="btn btn-primary search" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></i></button>
                      </span>
                    </div><!-- /input-group -->
                    <div class="input-group-small">
                      <span class="glyphicon glyphicon-search" aria-hidden="true"></span></i><br><span>search</span>
                    </div>
                  </div>
                </div> <!-- overlay -->
                <div class="container">
                      <div class="alifia row">
                          <div class="blog-content">
                              <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#" onclick="toogleTab(1)"><span>Do it Online</span><i class="one"></i></a></li>
                                <li><a data-toggle="tab" href="#" onclick="toogleTab(2)"><span>Event</span><i class="two"></i></a></li>
                              </ul>
                              <div class="tab-content">
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">
                                        <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/1.png">
                                        <div class = "content">
                                            <h2>Report a Problem</h2>
                                            <div class="preview">Report graffiti, a problem tree or missed garbage pick up</div>
                                        </div> 
                                    </div>
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">
                                        <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/2.png">
                                          <div class = "content">
                                            <h2>Building & Development</h2>
                                            <div class="preview">Report a code enforcement violation, apply for a permit and find your property's zoning category</div>
                                          </div>
                                    </div>
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">
                                        <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/3.png">
                                          <div class = "content">
                                            <h2>Parking & Environment</h2>
                                            <div class="preview">Report a code enforcement violation, apply for a permit and find your property's zoning category ly for a permit and find your property's zoning category</div>
                                          </div>
                                      </div>
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">          
                                          <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/4.png">
                                          <div class = "content">
                                            <h2>Trash & Recycling</h2>
                                            <div class="preview">View garbage pick up schedules, request a free composter and schedule large item pick up</div>
                                          </div>
                                    </div>
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">          
                                          <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/5.png">
                                          <div class = "content">
                                            <h2>Parks & Environment</h2>
                                            <div class="preview">Find parks and neighborhoos centers, report a problem tree and reserve a park</div>
                                          </div>
                                    </div>
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">              
                                          <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/6.png">
                                          <div class = "content">
                                            <h2>Public Safety</h2>
                                            <div class="preview">Public safety services provided by the Orlando Police Departement and the Orlando Fire Departement</div>
                                          </div>
                                    </div>
                                  <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">  
                                      <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/7.png">
                                          <div class = "content">
                                            <h2>Community Programs & Events</h2>
                                            <div class="preview">Learn about events, register for summer camp and volunteer with the City of Orlando</div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">
                                      <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset/8.png">
                                          <div class = "content">
                                          <h2>Our Government</h2>
                                          <div class="preview">Request a public record, apply for a city job and read the lastest news from the City of Orlando</div>
                                        </div>
                                    </div>
                                    <div class="panel panel-default col-md-4 col-sm-6 col-xs-12">
                                      <img class="box_image" src="<?php echo get_bloginfo('template_url')?>/asset//9.png">
                                          <div class = "content">
                                          <h2>Explore Your Neighborhood</h2>
                                          <div class="preview">Discover city parks & facilities, elected officials and garbage pick up days based on your address</div>
                                          </div>
                                    </div>
                                </div>
                              
                                <div id="eventTab" class="hidden">
                                  <div class="card">
                                    <img class="gambar img-responsive" src="<?php echo get_bloginfo('template_directory'); ?>/asset/councilmeetingyoutubethumbnail2018_finalweb.png" alt="Card image">
                                    <div class="card-body">
                                      <h4 class="card-title">City Council Meeting</h4>
                                      <p class="card-text">The Orlando City Council meets regularly to discuss and vote
                                                            on official city business. Members of the Orlando City Council are
                                                            the Mayor, elected at-large, and six City Commissioners who are elected 
                                                            from respective districts.</p>
                                    </div>
                                  </div>

                                  <div class="card">
                                    <img class="gambar img-responsive" src="<?php echo get_bloginfo('template_directory'); ?>/asset/071018_greenwood_0031.jpg" alt="Card image">
                                    <div class="card-body">
                                      <h4 class="card-title">Greenwood Cemetery Moonlight Walking Tour</h4>
                                      <p class="card-text">The Moonlight Walking Tour take you on historical 
                                                            stroll through Greenwood Cemetery. Visit about 100 graves 
                                                            of notable individuals in Orlando's history.</p>
                                    </div>
                                  </div>
                                
                                  <button type="button" class="btn-primary event">View More Events</button>
                                </div> <!-- Event -->

                              </div>
                          </div><!-- /.blog-main -->
                          
                      </div><!-- /.row -->
                </div><!-- /.container -->
              </div> <!-- blog head -->
            </div><!-- main background -->
          </div>
          <div class="block block-60">
          </div>
        </div>

      </div><!-- /.container -->

      <div class="container-fluid con-fld">

        <div class="row content-area">
        </div>
      </div> <!-- Event -->

      </div>
    </div><!-- /.blog-main -->

  </div><!-- /.row -->
  <div class="container-fluid con-fld">

    <div class="row content-area" style="padding=0;">
      <!-- <div class="col-xs-12 col-sm-6 col-md-4 content">
        <div class="test" id="council">
          <a href=# class="ref">
            <div class="panel-image">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/asset/officecommissionphoto2014.jpg" alt="Office Commission">
            </div>
            <div class="panel-text">
              <h2 class="header2">City Council</h2>
              <p class="overview">Find information about City Council meetings and learn about your elected officials.</p>
            </div>
          </a>
        </div>
      </div> -->
      <!-- <div class="col-xs-12 col-sm-6 col-md-4 content">
        <div class="test" id="neighborhood">
          <a href=# class="ref">
            <div class="panel-image">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/asset/myneighborhood.jpg" alt="My Neighborhood">
            </div>
            <div class="panel-text">
              <h2 class="header2">My Neighborhood</h2>
              <p class="overview">What's happening near you? Find everything from parks, events, projects, and garbage pick up details</p>
            </div>
          </a>
        </div>
      </div> -->
      <!-- <div class="col-xs-12 col-sm-6 col-md-4 content">
        <div class="test" id="digital">
          <a href=# class="ref">
            <div class="panel-image">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/asset/digital-services-academy_1.png" alt="Digital Services">
            </div>
            <div class="panel-text">
              <h2 class="header2">Welcome to Orlando.gov</h2>
              <p class="overview">We worked out the bugs, surveyed residents and continue to make improvements.</p>
            </div>
          </a>
        </div>
      </div> -->
      <?php
      $args = array(
        'post_type' => 'post'
      );
      // the_post_thumbnail();

      $post_query = new WP_Query($args);
      if ($post_query->have_posts()) {
        while ($post_query->have_posts() && !$show) {
          $post_query->the_post();
          ?>
          <div class="col-xs-12 col-sm-6 col-md-4 content">
            <div class="test" id="digital">
              <a href="<?php echo get_post_permalink(); ?>" class="ref" style="text-decoration:none;">
                <div class="panel-image">
                  <?php the_post_thumbnail(); ?>
                </div>
                <div class="panel-text">
                  <h2 class="header2"><?php echo get_the_title(); ?></h2>
                  <p class="overview">We worked out the bugs, surveyed residents and continue to make improvements.</p>
                </div>
              </a>
            </div>
          </div>
          <?php
        }
      }
      ?>
    </div>
  </div>
  <footer class="blog-footer">
    <div class="row foot1">
      <div class="col-sm-4 col-12 text-left">
        <h5>City Hall</h5>
        <p>400 South Orange Avenue<br>Orlando, Florida 32801<br>407.246.2121</p>
        <p>
          Monday - Friday 8 a.m. to 5 p.m.<br>
          <u><a href="https://www.orlando.gov/Directory/City-Buildings-Centers/City-Hall/Observed-Holidays" target="_self">Observed holidays</a></u>
        </p>
      </div>
      <div class="col-sm-4 col-12 text-left">
        <h5>Contact Us</h5>
        <p><u><a href="https://www.orlando.gov/Our-Government/Contact-Us" target="_self">City Directory</a></u></p>
        <p><u><a href="https://www.orlando.gov/Our-Government/Get-Involved/City-Newsletter" target="_self">Subscribe to City News</a></u></p>
        <p><u><a href="http://www.downtownorlando.com" target="_blank">Downtownorlando.com</a></u></p>
      </div>
      <div class="col-sm-4 col-12 text-left">
        <ul>
          <li class="footer-link-facebook">
            <i></i><a href="http://www.facebook.com/cityoforlando" target="_blank">Facebook</a>
          </li>
          <li class="footer-link-twitter">
            <a href="http://www.twitter.com/citybeautiful" target="_blank"><i></i>Twitter</a>
          </li>
          <li class="footer-link-youtube">
            <a href="http://www.youtube.com/cityoforlando" target="_blank"><i></i>YouTube</a>
          </li>
          <li class="footer-link-flickr">
            <a href="https://www.flickr.com/photos/cityoforlando" target="_blank"><i></i>Flickr</a>
          </li>
          <li class="footer-link-instagram">
            <a href="http://instagram.com/thecitybeautiful" target="_blank"><i></i>Instagram</a>
          </li>
          <li class="footer-link-snapchat">
            <a href="http://www.cityoforlando.net/snapchat/" target="_blank"><i></i>Snapchat</a></li>
          <li class="footer-link-linkedin">
            <a href="https://www.linkedin.com/company/city-of-orlando" target="_blank"><i></i>LinkedIn</a>
          </li>
          <li class="footer-link-nextdoor">
            <a href="https://nextdoor.com/agency-detail/fl/orlando/city-of-orlando-office-of-communications-neighborhood-relations/" target="_blank"><i></i>Nextdoor</a>
          </li>
        </ul>
      </div>
      <div class="col-sm-12 col-12 text-left">
        <p>
          <u><a href="https://gis.orlando.gov/orlandoinformationlocator/" target="_blank">Information Locator</a></u>
        </p>
        <p>The City of Orlando strives to make our online services accessible for everyone. If you require a reasonable accommodation, please email your request to 
          <u><a href="mailto:ADARequest@orlando.gov">ADARequest@orlando.gov</a>.</u>
        </p>
      </div>
    </div>
    <div class="row foot2">
      <div class="col-xs-6 text-left">
        <a href="https://www.orlando.gov/System-pages/Website-Legal-Notices" target="_self">Website Legal Notice</a>
        | 
        <a href="https://www.orlando.gov/General-Pages/Sitemap" target="_self">Sitemap</a>
      </div>
      <div class="col-xs-6 text-right">
        © 2019 City of Orlando | Powered by 
        <u><a href="http://www.opencities.com" target="_blank">OpenCities</a></u>
      </div>
    </div>
  </footer>

  </div><!-- /scroller -->
  </div><!-- /pusher -->
  </div><!-- /container -->



  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="<?php echo get_bloginfo('template_directory'); ?>/js/jquery.min.js"></script>
  <script src="<?php echo get_bloginfo('template_directory'); ?>/js/bootstrap.min.js"></script>

  <script src="<?php echo get_bloginfo('template_directory'); ?>/js/mlpushmenu.js"></script>
  <script src="<?php echo get_bloginfo('template_directory'); ?>/js/classie.js"></script>
  <script>
    new mlPushMenu(document.getElementById('mp-menu'), document.getElementById('trigger'), {
      type: 'cover'
    });
  </script>

  <script src="<?php echo get_bloginfo('template_directory'); ?>/js/script.js"></script>
  <?php wp_footer(); ?>
</body>

</html>
