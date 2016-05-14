/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function userData(value) {
    $.ajax({
        url: "AjaxController?user_name=" + value,
        success: function (data) {
            $("#userName").text(data);
        }
    });
}

function companyData(value) {
    $.ajax({
        url: "AjaxController?companyUser=" + value,
        success: function (data) {
            $("#userCompany").text(data);
        }
    });
}

function userMail(value) {
    $.ajax({
        url: "AjaxController?email_address=" + value,
        success: function (data) {
            $("#userMail").text(data);
        }
    });
}


function companyMaill(value) {
    $.ajax({
        url: "AjaxController?companyMail=" + value,
        success: function (data) {
            $("#emailCompany").text(data);
        }
    });
}

function nameCompany(value) {
    $.ajax({
        url: "AjaxController?companyName=" + value,
        success: function (data) {
            $("#nameComp").text(data);
        }
    });
}

