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
                        <div class="blog-header">

                            <div class="overlay">
                                <div class="col-sm-4">
                                    <img class="img img-logo" src="<?php echo get_bloginfo('template_directory'); ?>/asset/LogoOrlando.png" />
                                    <div class="block block-40 clearfix">
                                        <p><a href="#" id="trigger" class="menu-trigger"></a></p>
                                    </div>
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
                    <div class="block block-60">

                    </div>
                </div>
                <div class="row">

                    <div class="col-md-11 blog-content">
                        <!-- <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#" onclick="toogleTab(1)">Do it Online</a></li>
              <li><a data-toggle="tab" href="#" onclick="toogleTab(2)">Event</a></li>
            </ul> -->
                        <div class="tab-content" style="margin-top:-400px; height: auto">
                            <!-- Start Content -->
                            <?php
                            $args = array(
                                'post_type' => 'post'
                            );
                            // the_post_thumbnail();

                            $show = false;

                            $page_id = url_to_postid(get_post_permalink());

                            $post_query = new WP_Query($args);
                            if ($post_query->have_posts()) {
                                while ($post_query->have_posts() && !$show) {
                                    $post_query->the_post();
                                    if (get_the_id() == $page_id) {
                                        ?>

                                        <h1><?php echo get_the_title(); ?></h1>
                                        <h6><?php echo get_the_date(); ?></h6>
                                        <?php echo get_the_content(); ?>

                            <?php
                                        $show = true;
                                    }
                                }
                            }
                            ?>
                        </div> <!-- End Content -->
                    </div><!-- /.blog-main -->

                </div><!-- /.row -->

            </div><!-- /.container -->

            <div class="container-fluid con-fld">

                <div class="row content-area">
                </div>
            </div> <!-- Event -->

        </div>
    </div><!-- /.blog-main -->

    </div><!-- /.row -->

    <footer class="blog-footer">
        <div class="row foot1">
            <div class="col-md-4 col-sm-12 col-12 text-left">
                <h5>City Hall</h5>
                <p>400 South Orange Avenue<br>Orlando, Florida 32801<br>407.246.2121</p>
                <p>
                    Monday - Friday 8 a.m. to 5 p.m.<br>
                    <u><a href="https://www.orlando.gov/Directory/City-Buildings-Centers/City-Hall/Observed-Holidays" target="_self">Observed holidays</a></u>
                </p>
            </div>
            <div class="col-md-4 col-sm-12 col-12 text-left">
                <h5>Contact Us</h5>
                <p><u><a href="https://www.orlando.gov/Our-Government/Contact-Us" target="_self">City Directory</a></u></p>
                <p><u><a href="https://www.orlando.gov/Our-Government/Get-Involved/City-Newsletter" target="_self">Subscribe to City News</a></u></p>
                <p><u><a href="http://www.downtownorlando.com" target="_blank">Downtownorlando.com</a></u></p>
            </div>
            <div class="col-md-4 col-sm-12 col-12 text-left icon-foot">
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