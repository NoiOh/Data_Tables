
$(document).ready(function () {
    time();
    setTimeout(refreshpage, 1000 * 60 * 5);
    var table_scroll = $("#table_scroll");
    
    table_scroll.DataTable({
        "ordering": false, //no sorting
        "searching": false, //no searching
        "paging": false, //no pagination
        "columnDefs": 
            [
                {
                    "targets": [0, 8], //hide columns
                    "visible": false,
                }
             ],
        "createdRow": function (row, data) {
            if (data[5] === 'SHIPPED') {
              $(row).addClass('Highlight'); //highlight any row that says shipped in column 5
            }
        }
    });

    //fixed header
    getWidthHeader('table_fixed', 'table_scroll');

    pageScroll();

    /*table_scroll.mouseover(function () {
        clearTimeout(my_time);
    }).mouseout(function () {
        pageScroll();
    });*/
});

    function getWidthHeader(id_header, id_scroll) {
        var colCount = 0;
        $('#' + id_scroll + ' tr:nth-child(1) td').each(function () {
            if ($(this).attr('colspan')) {
                colCount += +$(this).attr('colspan');
            } else {
                colCount++;
            }
        });

        for (var i = 1; i <= colCount; i++) {
            var th_width = $('#' + id_scroll + ' > tbody > tr:first-child > td:nth-child(' + i + ')').width();
            $('#' + id_header + ' > thead th:nth-child(' + i + ')').css('width', th_width + 'px');
        }
    }

    function pageScroll() {
        var objDiv = document.getElementById("contain");

        objDiv.scrollTop = objDiv.scrollTop + 1;
        if ((objDiv.scrollTop + 600) == (objDiv.scrollHeight)) {
            objDiv.scrollTop = 0;
        }
        setTimeout('pageScroll()', 15);
    }

    //display time
    function time() {
        var d = new Date();
        document.getElementById("date").innerHTML = d;
        setTimeout(time, 1000);
    }

    function refreshpage(){
        location.reload();
    }
