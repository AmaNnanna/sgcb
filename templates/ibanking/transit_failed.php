<form class="m-0" action="/banco/dashboard/sendmoney" enctype="multipart/form-data" method="POST">
    <?= $Self->tokenize() ?>
    <div class="wrapper">

        <div class="header">
            <div class="row no-gutters">
                <div class="col-auto">
                    <a href="/ibanking/" onclick="javascript:history.go(-1)" class="btn  btn-link text-dark"><i class="material-icons">navigate_before</i></a>
                </div>
                <div class="col text-center"><img src="<?= $assets ?>/dashboard/img/logo-login.png" class="header-logo"></div>
                <div class="col-auto">
                    <a href="/ibanking/profile" class="btn  btn-link text-dark"><i class="material-icons">account_circle</i></a>
                </div>
            </div>
        </div>

        <div class="container">

            <div class="jumbotron mb-3 mt-5 bg-danger text-white text-center">
                <div class="container">
                    <h4 class="text-white mb-3">Transfer Failed</h4>
                    <p class="lead">Unfortunately, your transfer has failed to go through.</p>
                    <hr class="my-4">
                    <p>This can be caused by so many issues, kindly contact support to resolve this.</p>
                    <br>
                    <a class="btn btn-primary" href="/ibanking" role="button">Back To Dashboard</a>
                </div>
            </div>


        </div>

        <!-- footer-->
        <div class="footer">
            <div class="no-gutters">
                <div class="col-auto mx-auto">
                    <div class="row no-gutters justify-content-center">
                        <div class="col-auto">
                            <a href="/ibanking/" class="btn btn-link-default">
                                <i class="material-icons">home</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="/ibanking/activities/" class="btn btn-link-default">
                                <i class="material-icons">insert_chart_outline</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="/ibanking/transactions/" class="btn btn-link-default active">
                                <i class="material-icons">account_balance_wallet</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="/ibanking/profile" class="btn btn-link-default">
                                <i class="material-icons">account_circle</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="/ibanking/auth/logout" class="btn btn-link-default">
                                <i class="material-icons">power_settings_new</i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer ends-->


    </div>
</form>