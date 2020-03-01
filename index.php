<?php
   ob_start();
   include 'view/elements/header.php';
?>
<?php
   include 'controller/frontend_controller.php';
   $front = new FrontendControler();
   $front->handleRequest();
?>
<?php
    include 'view/elements/footer.php';
?>
