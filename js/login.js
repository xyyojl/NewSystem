$(document).ready(function () {
    $("#username").focus(function () {
        $("#username").val("");
    });
    $("#username").blur(function (event) {
        if ($("#username").val() == "") {
            $("#username").val("用户名");
        }
    });
    $("#password").focus(function () {
        $("#password").val("");
    });
    $("#password").blur(function (event) {
        if ($("#password").val() == "") {
            $("#password").val("密码");
        }
    });
    $("#code").focus(function () {
        $("#code").val("");
    });
    $("#code").blur(function (event) {
        if ($("#code").val() == "") {
            $("#code").val("验证码");
        }
    });
});