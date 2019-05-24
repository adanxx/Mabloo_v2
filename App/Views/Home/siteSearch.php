<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>SiteSearch</title>
    <link rel="stylesheet" href="/css/style.css"> 
    
</head>
<body>


<div class="wrapper">
    <div class="header">
        <div class="headerContent">
            
            <div class="logoContainer">
                <a href="/">
                <img src="../../../public/img/logo/logo.png" alt="logo_image">
                </a>
            </div>

            <div class="searchContainerbox">

                <form action="/home/search" method="GET">
                    
                    <div class="searchBarContainer">
                        <!-- <input type="hidden" name="type" value="" > -->
                        <input type="text" name="term" class="searchBox" value=""> <!--Santize the value-->
                        <button class="search-icon-btn">
                            <img src="../../../public/img/icons/search-icon.png" alt="search-icon" >
                        </button>
                    </div>

                </form>

            </div>  
            
        </div>

        <div class="tabsContainer">
            <ul class="tablist">
                <li class="active">
                    <a href='#'>Site</a>
                </li>
                <li  class="">
                    <a href="#" title="Link disabled" disabled>Images</a>
                </li>
                
            </ul>
        </div>
    </div>

    <div class="mainResultSection">
        <p class='resultCount'> <?php echo $count; ?>  result found</p>    
        
        <?php echo $sites; ?>

    </div>


</div> 

  

<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="../../../public/js/app.js"></script>

</body>
</html>
