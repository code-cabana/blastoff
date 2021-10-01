<?php
     $redirectUrl = (getenv('HEADLESS_REDIRECT_URL')) ?: "http://localhost:3000";
     header( "Location: " . $redirectUrl );
?>  