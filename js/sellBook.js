function sellBook() {
    let sellForm = document.getElementById("sell-form");
    let error = document.querySelector("#error");
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function() {
        if (this.readyState === 4 && this.status === 200) {
            let data = xmlhttp.response;

            if (data == "Success") {
                error.style.display = "block";
                error.style.backgroundColor = "#57c557";
                error.innerHTML = "Book Successfully uploaded";
            } else {
                error.style.display = "block";
                error.style.backgroundColor = "#f8d7da";
                error.innerText = this.responseText;
            }
        }
    }

    xmlhttp.open("POST", "php/SellBookprocess.php", true);
    let formD = new FormData(sellForm);
    xmlhttp.send(formD);
}