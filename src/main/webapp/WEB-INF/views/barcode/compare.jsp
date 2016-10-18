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
    <div class="row hidden" id="masterCheck">
        <div class="col-sm-6 well bs-component">
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
                                <tr id="tr1">
                                    <td><h4>1</h4></td>
                                    <td><h4><label id="labelPart1"></label></h4></td>
                                    <td><h4><label id="labelPo1"></label></h4></td>
                                    <td><h4><label id="labelQty1"></label></h4></td>
                                </tr>
                                <tr id="tr2">
                                    <td><h4>2</h4></td>
                                    <td><h4><label id="labelPart2"></label></h4></td>
                                    <td><h4><label id="labelPo2"></label></h4></td>
                                    <td><h4><label id="labelQty2"></label></h4></td>
                                </tr>
                                <tr id="tr3">
                                    <td><h4>3</h4></td>
                                    <td><h4><label id="labelPart3"></label></h4></td>
                                    <td><h4><label id="labelPo3"></label></h4></td>
                                    <td><h4><label id="labelQty3"></label></h4></td>
                                </tr>
                                <tr id="tr4">
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
            <div class="row">
                <div class="col-sm-12 well bs-component">
                    <form class="form-horizontal">
                        <fieldset>
                            <legend>Scanner Form Barcode Compare</legend>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <input class="form-control" id="inputBarcodeCompare" placeholder="Barcode Compare" autocomplete="off" type="text" autofocus>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div id="symbolPass" class="row hidden" align="center">
                        <div class="col-sm-12">
                            <spring:url var="bannerPass" value="/resources/images/pass.jpeg" />
                            <img src="${bannerPass}"/>
                        </div>
                    </div>
                    <div id="symbolFail" class="row hidden" align="center">
                        <div class="col-sm-12">
                            <spring:url var="bannerFail" value="/resources/images/fail.jpeg" />
                            <img src="${bannerFail}"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>

        var partMaster1ReplaceHyphen = "";
        var partMaster1Rep2aceHyphen = "";
        var partMaster1Rep3aceHyphen = "";
        var partMaster1Rep4aceHyphen = "";

        $("#inputBarcodeMaster").keypress(function(e) {

            if(e.which == 13 && $(this).val() != "") {
                var master = $(this).val();
                console.log(master);
                var str = master.split("[")

                var barcodeMaster1 = str[0];
                var barcodeMaster2 = str[1];
                var barcodeMaster3 = str[2];
                var barcodeMaster4 = str[3];

                var barcodeMaster1Array = barcodeMaster1.split("{");
                var partMaster1 = barcodeMaster1Array[0];
                var poMaster1 = barcodeMaster1Array[1];
                var qtyMaster1 = barcodeMaster1Array[2];

                var barcodeMaster2Array = barcodeMaster2.split("{");
                var partMaster2 = barcodeMaster2Array[0];
                var poMaster2 = barcodeMaster2Array[1];
                var qtyMaster2 = barcodeMaster2Array[2];

                var barcodeMaster3Array = barcodeMaster3.split("{");
                var partMaster3 = barcodeMaster3Array[0];
                var poMaster3 = barcodeMaster3Array[1];
                var qtyMaster3 = barcodeMaster3Array[2];

                var barcodeMaster4Array = barcodeMaster4.split("{");
                var partMaster4 = barcodeMaster4Array[0];
                var poMaster4 = barcodeMaster4Array[1];
                var qtyMaster4 = barcodeMaster4Array[2];

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

                var partMaster1SubStr = partMaster1.substring(0,8);
                partMaster1ReplaceHyphen = partMaster1SubStr.replace(/-/g, "");

                var partMaster2SubStr = partMaster2.substring(0,8);
                partMaster2ReplaceHyphen = partMaster2SubStr.replace(/-/g, "");

                var partMaster3SubStr = partMaster3.substring(0,8);
                partMaster3ReplaceHyphen = partMaster3SubStr.replace(/-/g, "");

                var partMaster4SubStr = partMaster4.substring(0,8);
                partMaster4ReplaceHyphen = partMaster4SubStr.replace(/-/g, "");

                $("#masterBarcode").addClass("hidden");
                $("#masterCheck").removeClass("hidden");

                $("#inputBarcodeCompare").focus();

                return false;
            }
        });

        $("#inputBarcodeCompare").keypress(function(e) {
            if(e.which == 13 && $(this).val() != "") {

                var barcodeCheck = $(this).val();
                var partCheck = barcodeCheck.substring(5,12);

                if(partCheck == partMaster1ReplaceHyphen) {
                    $("#tr2").removeClass("success");
                    $("#tr3").removeClass("success");
                    $("#tr4").removeClass("success");
                    $("#tr1").addClass("success");
                    $("#symbolPass").removeClass("hidden");
                    $("#symbolFail").addClass("hidden");
                } else if(partCheck == partMaster2ReplaceHyphen) {
                    $("#tr1").removeClass("success");
                    $("#tr3").removeClass("success");
                    $("#tr4").removeClass("success");
                    $("#tr2").addClass("success");
                    $("#symbolPass").removeClass("hidden");
                    $("#symbolFail").addClass("hidden");
                } else if(partCheck == partMaster3ReplaceHyphen) {
                    $("#tr1").removeClass("success");
                    $("#tr2").removeClass("success");
                    $("#tr4").removeClass("success");
                    $("#tr3").addClass("success");
                    $("#symbolPass").removeClass("hidden");
                    $("#symbolFail").addClass("hidden");
                } else if(partCheck == partMaster4ReplaceHyphen) {
                    $("#tr1").removeClass("success");
                    $("#tr2").removeClass("success");
                    $("#tr3").removeClass("success");
                    $("#tr4").addClass("success");
                    $("#symbolPass").removeClass("hidden");
                    $("#symbolFail").addClass("hidden");
                } else {
                    $("#tr1").removeClass("success");
                    $("#tr2").removeClass("success");
                    $("#tr3").removeClass("success");
                    $("#tr4").removeClass("success");
                    $("#symbolFail").removeClass("hidden");
                    $("#symbolPass").addClass("hidden");
                }

                $(this).val("");
                return false;
            }
        });
    </script>
</div>
