let main = document.querySelector("#main");
let bookName = document.querySelector("#book-name");

function search() {
    let fd = new FormData()
    fd.append("book-name", bookName.value);
    ajax("searchBook", main, main, fd, false)
}