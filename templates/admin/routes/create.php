<form class="m-0" action="/banco/admin/create" enctype="multipart/form-data" method="POST">
    <div class="container-fluid">
        <div class="col-xl-12 col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Create Account</h4>
                    <a type="button" href="/admin/accounts" class="btn btn-rounded btn-info float-right btn-md"><span class="btn-icon-left text-info"><i class="fa fa-plus color-info"></i></span>Manage Accounts</a>
                </div>
                <div class="card-body">
                    <div class="container">

                        <div class="row">


                            <div class="col-12 col-md-6">
                                <div class="form-group float-label">
                                    <label class="form-control-label">Select Domiciliary Currency </label>
                                    <select id="currency" name="currency" class="form-control" required="">
                                        <option value="" selected></option>
                                        <?= $Banco->LoadCurrenciesToSelect() ?>
                                    </select>
                                </div>
                            </div>

                            <div class="col-12 col-md-6">
                                <div class="form-group float-label">
                                    <label class="form-control-label">Select Account Type</label>
                                    <select id="account_type" name="account_type" class="form-control" required="">
                                        <option value="" selected></option>
                                        <option value="Savings Account">Savings Account</option>
                                        <option value="Current Account">Current Account</option>
                                        <option value="Investment Account">Investment Account</option>
                                        <option value="Trust Account">Trust Account</option>
                                        <option value="Platinum Business Account">Platinum Business Account</option>
                                        <option value="Gold Business Account">Gold Business Account</option>
                                        <option value="Loan Account">Loan Account</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                        <div class="row">

                            <div class="col-12 col-md-4">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">Gender</label>
                                    <select name="sex" id="sex" class="form-control" required="">
                                        <option value="">Choose Gender</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </div>
                            </div>


                            <div class="col-12 col-md-4">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">First Name</label>
                                    <input type="text" name="firstname" class="form-control" required="">
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">Last Name</label>
                                    <input type="text" name="lastname" class="form-control" required="">
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">Email address</label>
                                    <input type="email" name="email" class="form-control" required="">
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label active mb-0">
                                    <label class="form-control-label">Phone Number</label>
                                    <input type="tel" name="mobile" class="form-control" required="">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">Address line 1</label>
                                    <input type="text" name="address" class="form-control" required="">
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">Address line 2</label>
                                    <input type="text" name="address2" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">City</label>
                                    <input type="text" name="city" class="form-control" required="">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">Zip Code</label>
                                    <input type="text" name="zipcode" class="form-control" required="">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">State</label>
                                    <input type="text" name="state" class="form-control" required="">
                                </div>
                            </div>
                            <div class=" col-6">
                                <div class="form-group float-label active">
                                    <label class="form-control-label">Country</label>
                                    <select name="country" class="form-control">
                                        <?= $Banco->LoadCountriesToSelect() ?>
                                    </select>
                                </div>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block text-white btn-rounded shadow mt-3"><span>Create Account</span></button>

                        </div>

                        <br>
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>