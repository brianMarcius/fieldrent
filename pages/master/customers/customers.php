<header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <div class="page-title">
                    <div class="row">
                        <div class="col-12 col-md-6 order-md-1 order-last">
                            <h3><?php echo $submenu ?></h3>
                            <p class="text-subtitle text-muted">Data Customer </p>
                        </div>
                        <div class="col-12 col-md-6 order-md-2 order-first">
                            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="<?php echo $menu_link ?>"><?php echo $menu ?></a></li>
                                    <li class="breadcrumb-item active" aria-current="page"><?php echo $submenu ?></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
                <section class="section">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title float-start">List Customer</h4>
                            <button id="add" class="btn btn-sm btn-outline-primary float-end">+</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>Customer Code</th>
                                            <th>Customer Name</th>
                                            <th>PIC</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Address</th>
                                            <th>#</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody-customer">

                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <div class="modal fade text-left modal-borderless" id="customer-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-primary" id="modal-header">
                            <h5 class="modal-title white" id="myModalLabel1">Basic Modal</h5>
                            <button type="button" class="close rounded-pill"
                                data-bs-dismiss="modal" aria-label="Close">
                                <i data-feather="x"></i>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form class="form form-horizontal" id="form-customer">
                                <input type="hidden" id="id_customer" name="id_customer"/>
                                            <div class="form-body">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <label>Customer Name</label>
                                                    </div>
                                                    <div class="col-md-8 form-group">
                                                        <input type="text" id="customer_name" class="form-control form-control-sm"
                                                            name="customer_name" placeholder="customer Name">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label>PIC</label>
                                                    </div>
                                                    <div class="col-md-8 form-group">
                                                        <input type="text" id="pic" class="form-control form-control-sm"
                                                            name="pic" placeholder="pic name">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label>Email</label>
                                                    </div>
                                                    <div class="col-md-8 form-group">
                                                        <input type="email" id="email" class="form-control form-control-sm"
                                                            name="email" placeholder="john@mail.com">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label>Phone</label>
                                                    </div>
                                                    <div class="col-md-8 form-group">
                                                        <input type="text" id="phone" class="form-control form-control-sm"
                                                            name="phone" placeholder="08290xxxxx">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label>Address</label>
                                                    </div>
                                                    <div class="col-md-8 form-group">
                                                        <div class="form-floating">
                                                            <textarea class="form-control form-control-sm" id="address" name="address" row="5" placeholder="Address"
                                                                id="floatingTextarea"></textarea>
                                                            <label for="floatingTextarea">Address</label>
                                                        </div>                                                    
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn" data-bs-dismiss="modal">
                                <i class="bx bx-x d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Close</span>
                            </button>
                            <button type="button" id="save-customer" class="btn btn-primary ml-1">
                                <i class="bx bx-check d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Save</span>
                            </button>
                            <button type="button" id="update-customer" class="btn btn-primary ml-1">
                                <i class="bx bx-check d-block d-sm-none"></i>
                                <span class="d-none d-sm-block">Update</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>

<script>
    $(function(){
        getCustomers();
    })

    function getCustomers(){
        $.ajax({
            url : "app/master/Customers.php?f_name=get_all_customers",
            type : "GET",
            success : function(result){
                $("#tbody-customer").html(result);
            }
        });
    }

    $("#add").click(function(){
        modalShow('add');
    })

    $("#save-customer").click(function(){
        saveCustomer();
    })

    $("#update-customer").click(function(){
        updateCustomer();
    })

    function modalShow(mtd){
        var title;
        if (mtd=="add") {
            title = "Add New customer";
            $("input").val('');
            $("textarea").val('');
            $("select").val('');
            $("#save-customer").show();
            $("#update-customer").hide();
        }else{
            title = "Edit customer";
            $("#save-customer").hide();
            $("#update-customer").show();
        }
        $(".modal-title").html(title);
        $("#customer-modal").modal('toggle');
    }

    function getcustomerbyId(id){
        $.ajax({
            url : "app/master/Customers.php?f_name=get_customer_by_id",
            type : "GET",
            data : {
                data : id,
            },
            dataType : "JSON",
            success : function(result){
                $("#id_customer").val(result.id_customer);
                $("#customer_name").val(result.customer_name);
                $("#pic").val(result.pic);
                $("#email").val(result.email);
                $("#phone").val(result.phone);
                $("#address").val(result.address);

                modalShow('edit');
            }
        })
    }

    function saveCustomer(){
        $.ajax({
            url : "app/master/Customers.php?f_name=store",
            type : "POST",
            data :  $("#form-customer").serialize(),
            dataType : "JSON",
            success : function(result){
                $("#customer-modal").modal('hide');
                getCustomers();
            }
        })
    }

    function updateCustomer(id){
        $.ajax({
            url : "app/master/Customers.php?f_name=update",
            type : "POST",
            data :  $("#form-customer").serialize(),
            dataType : "JSON",
            success : function(result){
                $("#customer-modal").modal('hide');
                getCustomers();
            }
        })
    }

    function deleteCustomer(id){
        var confirm = window.confirm("Are you sure want to delete this?");
        if (confirm) {
            $.ajax({
            url : "app/master/Customers.php?f_name=delete",
            type : "GET",
            data :  {
                id_customer : id
            },
            dataType : "JSON",
            success : function(result){
                getCustomers();
            }
        })
        }
    }



</script>
