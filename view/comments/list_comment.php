<div class="card">
    <div class="card-header">
        <h3 class="card-title">List Comment</h3>
    </div>
        <!-- /.card-header -->
    <div class="card-body">
        <table class="table table-bordered">
            <thead>                  
                <tr>
                    <th style="width: 10px">#</th>
                    <th>Product</th>
                    <th>Content</th>
                    <th>Created</th>
                    <th style="width: 40px">Action</th>
                </tr>
            </thead>
            <?php
                while ($comment = $listComment->fetch_assoc()) {
                    $id = $comment['id'];
            ?>
                <tbody>
                    <tr>
                        <td><?php echo $id?></td>
                        <td><?php echo $comment['name']?></td>
                        <td><?php echo $comment['content']?></td>
                        <td><?php echo $comment['created_at']?></td>
                        <td>
                            <?php
                                if($comment['status'] == 0) {
                            ?>
                            Approved
                            <?php
                                } else {
                                ?>
                            <a href="admin.php?controller=comments&action=approve&id=<?php echo $id?>">Chưa approve</a>
                                <?php
                                }
                            ?>
                        </td>
                    </tr>
                </tbody>
            <?php        
                }

            ?>
        </table>
              <!-- /.card-body -->
            <div class="card-footer clearfix">
                <ul class="pagination pagination-sm m-0 float-right">
                   <li class="page-item"><a class="page-link" href="#">«</a></li>
                   <li class="page-item"><a class="page-link" href="#">1</a></li>
                   <li class="page-item"><a class="page-link" href="#">2</a></li>
                   <li class="page-item"><a class="page-link" href="#">3</a></li>
                   <li class="page-item"><a class="page-link" href="#">»</a></li>
                </ul>
            </div>
</div>