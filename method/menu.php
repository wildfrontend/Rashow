
<?php if ($_GET['level']==1): ?>
  <ul class="list-group">
    <li class="list-group-item"><a href="./?level=1&type=poster">海報管理</a></li>
    <ol>
      <li class="list-group-item"><a href="./?view=0&pass=0&level=1&type=poster">未審核頁面</a>
        <span class="badge"><? echo $_SESSION['page']?></span></li>
      <li class="list-group-item"><a href="./?view=1&pass=1&level=1&type=poster">已通過頁面</a></li>
      <li class="list-group-item"><a href="./?view=1&pass=0&level=1&type=poster">未通過頁面</a></li>
    </ol>
    <li class="list-group-item"><a href="./?level=1&type=member">播放監控</a></li>
    <li class="list-group-item"><a href="./?level=1&type=member">會員管理</a></li>
    <li class="list-group-item"><a href="./?level=1&type=member">數據分析</a></li>
    <li class="list-group-item"><a href="../method/logout.php">登出</a></li>
  </ul>
<?php elseif($_GET['level']==0): ?>
  <ul class="list-group">
    <li class="list-group-item"><a href="./?page=upload&level=0">上傳海報</a></li>
    <li class="list-group-item"><a href="./?page=mes&level=0">訊息</a></li>
    <li class="list-group-item"><a href="./?page=mail&level=0">留言給管理員</a></li>
    <li class="list-group-item"><a href="./?page=his&level=0">歷史紀錄</a></li>
    <li class="list-group-item"><a href="../method/logout.php">登出</a></li>
  </ul>
<?php endif; ?>