<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>登入頁面</title>
    <!-- bootstrap -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

  </head>
  <body >
    <div class="container">
      <div class="row">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
      </div>
      <div class="row">
       <div class="col-md-4 col-md-offset-4" >
         <div class="panel panel-primary">
           <div class="panel-heading">
             <b><h2>Login</h2></b>
           </div>
           <div class="panel-body">
             <form class="form-signin" role="form" action="./logincheck.php" method="post">
               <!-- 信箱 -->
               <label for="inputEmail" class="sr-only">Email address</label>
               <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus=""  name="mail">
               <br>
               <!-- 密碼 -->
               <label for="inputPassword" class="sr-only">Password</label>
               <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="password">
               <br>


               <!-- 狀態欄 -->
               <div class="list-group">
                 <?php if ($_GET['sig_suc']==null&&$_GET['error']==null): ?>
                   <a href="./sign" class="list-group-item list-group-item-info">還沒註冊嗎?</a>

                 <?php endif; ?>
                 <?php if ($_GET['sig_suc']!=''): ?>
                   <li class="list-group-item list-group-item-success"><?php echo $_GET['sig_suc'] ?>
                 <?php endif; ?>
                 <?php if ($_GET['error']!=''): ?>
                   <li class="list-group-item list-group-item-danger"><?php echo $_GET['error'] ?>
                   <li><a href="./forget/" class="list-group-item list-group-item-info">忘記密碼</a>
                 <?php endif; ?>
               </div>
                 <?php require_once "google_api_auth.php"; ?>
                 <?php if (isset($authUrl)): ?>
                    <a href=<?echo $authUrl; ?>>
                      <img src="https://i.stack.imgur.com/XzoRm.png" height = "50px" width ='300px'>
                    </a>
                 <?php endif; ?>
                 <br>
                 <br>
                 <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
              </div>
            </form>
           </div>
         </div>
       </div>
      </div>
   </div>
  </body>
</html>