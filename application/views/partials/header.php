<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> 
<![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang="en"> 
<![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
    <title><?= isset($title) ? $title : 'SIPMB' ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="College Education Responsive Template">
    <meta name="author" content="Esmet">
    <meta charset="UTF-8">

    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800' rel='stylesheet' type='text/css'>
        
    <!-- CSS Bootstrap & Custom -->
    <link href="<?=base_url()?>public/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="<?=base_url()?>public/css/font-awesome.min.css" rel="stylesheet" media="screen">
    <link href="<?=base_url()?>public/css/animate.css" rel="stylesheet" media="screen">
    <link href="<?=base_url()?>public/css/style.css" rel="stylesheet" media="screen">
    <link href="<?=base_url()?>public/css/main.css" rel="stylesheet" media="screen">
    <link href="<?=base_url()?>public/css/misc.css" rel="stylesheet" media="screen">
    <link href="<?=base_url()?>public/css/color-scheme.css" rel="stylesheet" media="screen">
    <link href="<?=base_url()?>public/css/responsive.css" rel="stylesheet" media="screen">

    <!-- Favicons -->
    <link rel="shortcut icon" href="<?=base_url()?>public/images/ico/favicon.ico">
    
    <!-- JavaScripts -->
    <script src="<?=base_url()?>public/js/jquery-1.10.2.min.js"></script>
    <script src="<?=base_url()?>public/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="<?=base_url()?>public/js/modernizr.js"></script>
    <!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" /></a>
        </div>
    <![endif]-->
</head>
<body>

    <!-- This one in here is responsive menu for tablet and mobiles -->
    <div class="responsive-navigation visible-sm visible-xs">
        <a href="#" class="menu-toggle-btn">
            <i class="fa fa-bars"></i>
        </a>
        <div class="responsive_menu">
            <ul class="main_menu">
                <li><a href="index.php">Home</a></li>
                <li><a href="#">Cari Kampus</a></li>
                <li><a href="#">Informasi Pendaftaran</a></li>
                <li><a href="#">Informasi Beasiswa</a></li>
                <li><a href="form.php">PMB</a></li>
                <!-- /.main_menu -->
                
                <!-- /.social_icons -->
        </div> <!-- /.responsive_menu -->
    </div> <!-- /responsive_navigation -->


    <header class="site-header">
        <div class="container">
            <div class="row">
                <div class="col-md-4 header-left">
                    <p><i class="fa fa-phone"></i> +01 2334 853</p>
                    <p><i class="fa fa-envelope"></i> <a href="mailto:email@universe.com">email@universe.com</a></p>
                </div> <!-- /.header-left -->

                <div class="col-md-4">
                    <div class="logo">
                        <a href="index.php" title="Universe" rel="home">
                            <img src="<?=base_url()?>public/images/logo.png" alt="Universe">
                        </a>
                    </div> <!-- /.logo -->
                </div> <!-- /.col-md-4 -->

                <div class="col-md-4 header-right">
                    <ul class="small-links">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Apply Now</a></li>
                    </ul>
                    <div class="search-form">
                        <form name="search_form" method="get" action="#" class="search_form">
                            <input type="text" name="s" placeholder="Search the site..." title="Search the site..." class="field_search">
                        </form>
                    </div>
                </div> <!-- /.header-right -->
            </div>
        </div> <!-- /.container -->

        <div class="nav-bar-main" role="navigation">
            <div class="container">
                <nav class="main-navigation clearfix visible-md visible-lg" role="navigation">
                        <ul class="main-menu sf-menu">   
                            <li class="active"><a href="index.html">Home</a></li>
                            <li><a href="#">Cari Kampus</a></li>
                            <li><a href="#">Informasi Pendaftaran</a></li>
                            <li><a href="#">Informasi Beasiswa</a></li>
                            
                            <!-- /.main-menu -->
                            <div class="responsive-navigation visible-sm visible-xs">
                                    <a href="#" class="menu-toggle-btn">
                                        <i class="fa fa-bars"></i>
                                    </a>
                                    <div class="responsive_menu">
                                        <ul class="main_menu">
                                            <li><a href="index.html">Home</a></li>
                                            <li><a href="#">Cari Kampus</a></li>
                                            <li><a href="#">Informasi Pendaftaran</a></li>
                                            <li><a href="#">Informasi Beasiswa</a></li>
                                            
                                            <!-- /.main_menu -->

                                            <!-- /.social_icons -->
                                    </div> <!-- /.responsive_menu -->
                            </div>
                            <!-- /.social-icons -->
                </nav> <!-- /.main-navigation -->
            </div> <!-- /.container -->
        </div> <!-- /.nav-bar-main -->

    </header> <!-- /.site-header -->