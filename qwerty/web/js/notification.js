/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//$(document).ready(function () {
//    if(document)
//    setTimeout(test, 1000);
//});

function test() {    
    $.ajax({
        url: 'NotificationController',
        type: 'POST',
        success: function (data) {
            console.log(data);
            $("#notificationNo").text(data);
        }
    });    
    setTimeout(test,1000);
}
