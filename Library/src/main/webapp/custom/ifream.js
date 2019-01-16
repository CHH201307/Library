function autoHeight(iframe) {
    if (iframe) {
        var iframeWin = iframe.contentWindow;
        if (iframeWin.document.body) {
            iframe.height = iframeWin.document.documentElement.scrollHeight;
            iframe.width = document.documentElement.clientWidth;
        }
    }
}
function changeFrame() {
    var f = document.getElementById("myiframe");
    autoHeight(f);
}
window.onresize = function () {
    changeFrame();
}