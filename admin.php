
<?php
 include 'view/elements/admin/header.php';
 include 'view/elements/admin/sidebar.php';
 include 'controller/backend_controller.php';
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
        <?php 
          if(isset($_SESSION['login']) && $_SESSION['login']['role'] == 'admin'){
            $backend = new BackendController();
            $backend->handleRequest();
          } else {
            header('Location: index.php');
          }
        ?>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php include 'view/elements/admin/footer.php';?>
