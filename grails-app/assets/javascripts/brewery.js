/**
 * Created by Greg on 5/3/2016.
 */
var formerhigh = "IPA";
function highlight(x) {

    newtab = document.getElementById(x);
    newtab.className = "active";
    oldtab = document.getElementById(formerhigh);
    oldtab.className = "";
    formerhigh = x;
    return formerhigh;
}