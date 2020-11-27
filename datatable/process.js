$(document).ready(function () {
    $("#addNew").on('click', function() {
        $("#tableManager").modal('show');
    });

    $("#tableManager").on('hidden.bs.modal', function () {
        $("#showContent").fadeOut();
        $("#editContent").fadeIn();
        $("#editRowID").val(0);
        $("#order_num").val("");
        $("#customer").val("");
        $("#carrier").val("");
        $("#city").val("");
        $("#status").val("");
        $("#ship_time").val("");
        $("#truckloads").val("");
        $("#plt_qty").val("");
        //$("#closeBtn").fadeOut();
        //$("#closeBtn").fadeIn();
        $("#manageBtn").attr('value', 'Add New').attr('onclick', "manageData('addNew')").fadeIn();
        
    });
    time();
    getExistingData(0,50);
});

function deleteRow(rowID){
    if (confirm('Are you sure?')){
        //alert('deleted');
        //} else
        //alert('Delete row cancel!');
        $.ajax({
            url: 'source/ajax.php',
            method: 'POST',
            dataType: 'text',
            data: {
                key: 'deleteRow',
                rowID: rowID
            }, success: function (response) {
                $("#shipping_"+rowID).parent().remove();
                alert(response);
                location.reload();
            } 			
        });
    }
}

function viewORedit(rowID, type) {
    $.ajax({
        url: 'source/ajax.php',
        method: 'POST',
        dataType: 'json',
        data: {
            key: 'getRowData',
            rowID: rowID
        }, success: function (response) {
            if (type == "view"){
                $("#showContent").fadeIn();
                $("#editContent").fadeOut();
                $("#showTruck").html(response.truckloads);
                $("#showPlt").html(response.plt_qty);
                $("#manageBtn").fadeOut();
                //$("#closeBtn").fadeIn();
            } else {
                $("#editContent").fadeIn();
                $("#editRowID").val(rowID);
                $("#showContent").fadeOut();
                $("#order_num").val(response.order_num);
                $("#customer").val(response.customer);
                $("#carrier").val(response.carrier);
                $("#city").val(response.city);
                $("#status").val(response.status);
                $("#ship_time").val(response.ship_time);
                $("#truckloads").val(response.truckloads);
                $("#plt_qty").val(response.plt_qty);
                //$("#closeBtn").fadeOut();
                //$("#closeBtn").fadeIn();
                $("#manageBtn").attr('value', 'Save Changes').attr('onclick', "manageData('updateRow')");	
            }  
            $(".modal-title").html('Order Number');
            $("#tableManager").modal('show');
        }					
    });
}

function getExistingData(start, limit){
    $.ajax({
        url: 'source/ajax.php',
        method: 'POST',
        dataType: 'text',
        data: {
            key: 'getExistingData',
            start: start,
            limit: limit
        }, success: function (response) {
            if (response != "reachedMax"){
                $('tbody').append(response);
                start += limit;
                getExistingData(start, limit);
            } else
                $(".table").DataTable({ // datatable creates the look of the table
                    "dom": 'Bfrtip',
                    "buttons": 
                    [
                        'excel', 'pdf'
                    ],
                    "ordering": true,
                    "searching": true,
                    "paging":true,
                    "columnDefs": 
                    [
                        {
                            "targets": [0, 7, 8],
                            "searchable": false,
                            "visible": false,
                        },
                        {
                            "targets": [0, 3, 4, 5, 6, 7, 8, 9],
                            "orderable": false,
                        }
                    ],
                 });
        }
    });  	
}

function manageData(key) {
    var order_num = $("#order_num");
    var customer = $("#customer");
    var carrier = $("#carrier");
    var city = $("#city");
    var status = $("#status");
    var ship_time = $("#ship_time");
    var truckloads = $("#truckloads");
    var plt_qty = $("#plt_qty");
    var editRowID = $("#editRowID");
    
    if (isNotEmpty(order_num) && isNotEmpty(customer) && isNotEmpty(carrier) && isNotEmpty(city) && isNotEmpty(status) 
        && isNotEmpty(ship_time) && isNotEmpty(truckloads) && isNotEmpty(plt_qty)){
        //alert('here'); call ajax
        $.ajax({
            url: 'source/ajax.php',
            method: 'POST',
            dataType: 'text',
            data: {	
                key: key,
                order_num: order_num.val(),
                customer: customer.val(),
                carrier: carrier.val(),
                city: city.val(),
                status: status.val(),
                ship_time: ship_time.val(),
                truckloads: truckloads.val(),
                plt_qty: plt_qty.val(),
                rowID: editRowID.val(),
            }, success: function (response){
                if(response != "Success")
                    alert('Error');
                else{
                    // $("#shipping_order_num_"+editRowID.val()).html(order_num.val()); // automatic update when editing an order 
                    // $("#shipping_customer_"+editRowID.val()).html(customer.val());
                    // $("#shipping_carrier_"+editRowID.val()).html(carrier.val());
                    // $("#shipping_city_"+editRowID.val()).html(city.val());
                    // $("#shipping_status_"+editRowID.val()).html(status.val());
                    // $("#shipping_ship_time_"+editRowID.val()).html(ship_time.val());
                    // $("#shipping_truckloads_"+editRowID.val()).html(truckloads.val());
                    // $("#shipping_plt_qty_"+editRowID.val()).html(plt_qty.val());
                    order_num.val('');
                    customer.val('');
                    carrier.val('');
                    city.val('');
                    status.val('');
                    ship_time.val('');
                    truckloads.val('');
                    plt_qty.val('');
                    $("#tableManager").modal('hide');
                    $("#manageBtn").attr('value', 'Add').attr('onclick', "manageData('addNew')");
                    location.reload(); //refreshes page after adding a new order
                }
            }
        });
    }
}
    
// shows red border when field is left empty		
function isNotEmpty(caller) {
    if (caller.val() == ''){
        caller.css('border', '1px solid red');
    return false;
    } else
        caller.css('border', '');
    return true;
}

// date and time
function time() {
    var d = new Date();
    document.getElementById("date").innerHTML = d;
    setTimeout(time, 1000);
}
