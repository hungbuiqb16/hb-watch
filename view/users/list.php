<div class="card">
    <div class="card-header">
        <h3 class="card-title">List Users</h3>
    </div>
        <!-- /.card-header -->
    <div class="card-body">
        <table class="table table-bordered">
            <thead>                  
                <tr>
                    <th style="width: 10px">#</th>
                    <th>Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Birthday</th>
                    <th>Avatar</th>
                    <th>Role</th>
                    <th>Created date</th>
                    <th style="width: 40px">Action</th>
                </tr>
            </thead>
            <?php
                while ($user = $listUser->fetch_assoc()) {
                    $id = $user['id'];
            ?>
                <tbody>
                    <tr>
                        <td><?php echo $id?></td>
                        <td><?php echo $user['fname']?></td>
                        <td><?php echo $user['username']?></td>
                        <td><?php echo $user['email']?></td>
                        <td><?php echo $user['phone']?></td>
                        <td><?php echo $user['birthday']?></td>
                        <td>
                            <img src="webroot/uploads/users/<?php echo $user['avatar'];?>" alt="" style="height: 60px; width: auto;" class="img_default">
                        </td>
                        <td><?php echo $user['role']?></td>
                        <td><?php echo $user['created_at']?></td>
                        <td>
                            <a href="admin.php?controller=users&action=edit&id=<?php echo $id?>">Edit</a> |
                            <a href="admin.php?controller=users&action=delete&id=<?php echo $id?>">Delete</a>
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