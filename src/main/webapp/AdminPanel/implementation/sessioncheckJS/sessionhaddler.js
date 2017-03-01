if (sessionStorage.getItem("Page2Visited")) {
    sessionStorage.removeItem("Page2Visited");
    window.location.reload(true); // force refresh page1
}


window.onpageshow = function (event) {
    if (event.persisted) {
        document.body.style.display = "none";
        //location.reload();
        pageReload();
    }
};
/*! Reloads page on every visit */
function pageReload() {
    console.log("Reload()");
    try {
        var headElement = document.getElementsByTagName("head")[0];
        if (headElement && headElement.innerHTML)
            headElement.innerHTML += "<meta http-equiv=\"refresh\" content=\"1\">";
    } catch (e) {
    }
}

window.onbeforeunload = pageReload;




