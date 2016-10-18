<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/" var="home" />
<div class="container">
    <div class="row">
        <div class="col-sm-6 well bs-component" id="masterBarcode">
            <form class="form-horizontal">
                <fieldset>
                    <legend>Scanner Form Master</legend>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <input class="form-control" id="inputBarcodeMaster" placeholder="Barcode Master" autocomplete="off" type="text" autofocus>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="col-sm-6">

        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 well bs-component hidden" id="masterCheck">
            <form class="form-horizontal">
                <fieldset>
                    <legend>Master Check</legend>
                    <div>
                        <table class="table table-striped table-hover ">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Part Number</th>
                                    <th>PO.</th>
                                    <th>Qty</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><h4>1</h4></td>
                                    <td><h4><label id="labelPart1"></label></h4></td>
                                    <td><h4><label id="labelPo1"></label></h4></td>
                                    <td><h4><label id="labelQty1"></label></h4></td>
                                </tr>
                                <tr>
                                    <td><h4>2</h4></td>
                                    <td><h4><label id="labelPart2"></label></h4></td>
                                    <td><h4><label id="labelPo2"></label></h4></td>
                                    <td><h4><label id="labelQty2"></label></h4></td>
                                </tr>
                                <tr>
                                    <td><h4>3</h4></td>
                                    <td><h4><label id="labelPart3"></label></h4></td>
                                    <td><h4><label id="labelPo3"></label></h4></td>
                                    <td><h4><label id="labelQty3"></label></h4></td>
                                </tr>
                                <tr>
                                    <td><h4>4</h4></td>
                                    <td><h4><label id="labelPart4"></label></h4></td>
                                    <td><h4><label id="labelPo4"></label></h4></td>
                                    <td><h4><label id="labelQty4"></label></h4></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </fieldset>
            </form>
        </div>
        <div class="col-sm-6">

        </div>
    </div>
    <script>
        $("#inputBarcodeMaster").keypress(function(e) {
            var barcodeMaster1 = "";
            var barcodeMaster2 = "";
            var barcodeMaster3 = "";
            var barcodeMaster4 = "";

            var partMaster1 = "";
            var partMaster2 = "";
            var partMaster3 = "";
            var partMaster4 = "";

            var poMaster1 = "";
            var poMaster2 = "";
            var poMaster3 = "";
            var poMaster4 = "";

            var qtyMaster1 = "";
            var qtyMaster2 = "";
            var qtyMaster3 = "";
            var qtyMaster4 = "";

            if(e.which == 13 && $(this).val() != "") {
                var master = $(this).val();
                console.log(master);
                var str = master.split("[")
                console.log(str[5]);
                barcodeMaster1 = str[0];
                barcodeMaster2 = str[1];
                barcodeMaster3 = str[2];
                barcodeMaster4 = str[3];

                var barcodeMaster1Array = barcodeMaster1.split("{");
                partMaster1 = barcodeMaster1Array[0];
                poMaster1 = barcodeMaster1Array[1];
                qtyMaster1 = barcodeMaster1Array[2];

                var barcodeMaster2Array = barcodeMaster2.split("{");
                partMaster2 = barcodeMaster2Array[0];
                poMaster2 = barcodeMaster2Array[1];
                qtyMaster2 = barcodeMaster2Array[2];

                var barcodeMaster3Array = barcodeMaster3.split("{");
                partMaster3 = barcodeMaster3Array[0];
                poMaster3 = barcodeMaster3Array[1];
                qtyMaster3 = barcodeMaster3Array[2];

                var barcodeMaster4Array = barcodeMaster4.split("{");
                partMaster4 = barcodeMaster4Array[0];
                poMaster4 = barcodeMaster4Array[1];
                qtyMaster4 = barcodeMaster4Array[2];

                $("#labelPart1").text(partMaster1);
                $("#labelPo1").text(poMaster1);
                $("#labelQty1").text(qtyMaster1);

                $("#labelPart2").text(partMaster2);
                $("#labelPo2").text(poMaster2);
                $("#labelQty2").text(qtyMaster2);

                $("#labelPart3").text(partMaster3);
                $("#labelPo3").text(poMaster3);
                $("#labelQty3").text(qtyMaster3);

                $("#labelPart4").text(partMaster4);
                $("#labelPo4").text(poMaster4);
                $("#labelQty4").text(qtyMaster4);

                $("#masterBarcode").addClass("hidden");
                $("#masterCheck").removeClass("hidden");

                return false;
            }
        });
    </script>
</div>
