<?php 
	function gui_thong_tin () {
		global $conn_vn;
		if (isset($_POST['gui_thong_tin'])) {
			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$email = mysqli_real_escape_string($conn_vn, $_POST['email']);
			$note = mysqli_real_escape_string($conn_vn, $_POST['note']);

			$sql = "INSERT INTO gui_thong_tin (name, email, note) VALUES ('$name', '$email', '$note')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script>alert("Bạn đã gửi thông tin thành công.")</script>';
			} else {
				echo '<script>alert("Có lỗi xảy ra.")</script>';
			}
		}
	}
	gui_thong_tin();
?>

<div class="gb-recenpost-sidebar-ruouvang widget-sidebar">
    <aside class="widget">
        <h3 class="widget-title-sidebar-ruouvang">GỬI THÔNG TIN</h3>
        <div class="widget-content">
            <div class="gb-blog-left-recent-posts_ruouvang">
                <form action="" method="post" accept-charset="utf-8" class="sidebar-form">
                	<input type="text" name="name" placeholder="Họ và tên" required="">
                	<input type="email" name="email" placeholder="Email" required="">
                	<textarea name="note" rows="5" placeholder="Nội dụng của bạn" required=""></textarea>
                	<div class="text-center">
                		<button type="submit" name="gui_thong_tin">GỬI YÊU CẦU</button>
                	</div>
                	
                </form>
            </div>
        </div>
    </aside>
</div>