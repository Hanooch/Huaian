﻿/* 行业动态发布js */
window.addEventListener("load", checkControl, false);
function checkControl() {
    document.getElementById("postName").value = "false";
    document.getElementById("newsForm").addEventListener("submit", checkForm, false);
    document.getElementById("postName").value = false;
}

function Refresh(evt) {
    evt.preventDefault();
    window.location = '../IndustryInformation.aspx';
}

function checkForm(evt) {
        document.getElementById("postName").value = true;
}

