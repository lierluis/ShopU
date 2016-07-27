<div class="container">

    <!-- logo -->
    <div class="logo">
        <img src="<?php echo URL; ?>img/shopu-mod.jpg" alt="ShopU logo"
             class='img-responsive'/>
    </div>

    <!-- navigation bar -->
    <nav class="navbar navbar-default">
        <div class="container-fluid" align='center'>

            <!-- navbar header -->
            <div class="navbar-header">

                <!-- hamburger icon -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- navbar name -->
                <a class="navbar-brand" href="<?php echo URL; ?>"><span class="glyphicon glyphicon-home"></span> ShopU</a>

            </div>

            <!-- navbar body -->
            <div class="collapse navbar-collapse" id="myNavbar">

                <!-- navbar links to the left -->
                <ul class="nav navbar-nav">
                    
                </ul>

                <!-- navbar links to the right -->
                <ul class="nav navbar-nav navbar-right">
                    
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="glyphicon glyphicon-lamp"></span> Items<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?php echo URL; ?>items/index">All Items</a></li>
                            <li><a href="<?php echo URL; ?>items/sellitem">Sell Item</a></li>
                        </ul>
                    </li>
                    
                    <li><a href="<?php echo URL; ?>users/index">
                            <span class="glyphicon glyphicon-user"></span> Users</a></li>
                            
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <span class="glyphicon glyphicon-cog"></span> Account<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <?php if (isset($_SESSION["user_id"]) == false) { ?>
                                <li><a href="<?php echo URL; ?>users/signup">
                                    <span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                <li><a href="<?php echo URL; ?>users/signin">
                                    <span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
                            <?php } else { ?>
                                <li><a href="<?php echo URL; ?>users/signout">
                                    <span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
                            <?php } ?>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <!-- search bar -->
    <!-- leads to the form() method in the Search controller -->
    <form action="<?php echo URL; ?>search/form" method="GET" id='searchbar'>
        <div class="input-group input-group-lg">

            <!-- category list -->
            <span class="input-group-btn">
                <select name="category" id="category" class="btn btn-warning btn-lg resizeselect">
                    <option value="All">All</option>
                    <option value="Books">Books</option>
                    <option value="Clothes">Clothes</option>
                    <option value="Electronics">Electronics</option>
                    <option value="Furniture">Furniture</option>
                    <option value="Transportation">Transportation</option>
                    <option value="Other">Other</option>
                </select>
            </span>

            <!-- search bar text input -->
            <input type="text" name="searchbar" class="form-control input-lg"
                   placeholder="Search..." autocomplete="off"/>

            <!-- submit button (magnifier icon) -->
            <span class="input-group-btn">
                <button class="btn btn-warning btn-lg" type="submit" name="submit_search">
                    <i class="glyphicon glyphicon-search"></i>
                </button>
            </span>

        </div>
    </form>
</div>

<!--This function resizes the search bar <select> tag based on the <option> width selected. Reference:
http://stackoverflow.com/questions/20091481/auto-resizing-the-select-element-according-to-selected-options-width#answer-28310736-->
<script>
    (function($, window){
    var arrowWidth = 50;
    
    $.fn.resizeselect = function(settings) {
        return this.each(function() {
            
            $(this).change(function(){
                var $this = $(this);
                
                // create test element
                var text = $this.find("option:selected").text();
                var $test = $("<span>").html(text);
                
                // add to body, get width, and get out
                $test.appendTo('body');
                var width = $test.width();
                $test.remove();
                
                // set select width
                $this.width(width + arrowWidth);
                
                // run on start
            }).change();
        });
    };
    // run by default
    $("select.resizeselect").resizeselect();
    
    })(jQuery, window);
</script>
