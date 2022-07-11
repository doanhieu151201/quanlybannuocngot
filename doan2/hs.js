function  addToCart(item) {
    item.quantity = 1;
    var list;
    if (localStorage.getItem('cart') == null) {
        list = [item];
    } else {
        list = JSON.parse(localStorage.getItem('cart')) || [];
    let ok = true;
    for (let x of list) {
        if (x.id == item.id) {
        x.quantity += 1;
        ok = false;
        break;
        }
    }
    if(ok){
        list.push(item); 
    } 
    }
    localStorage.setItem('cart', JSON.stringify(list));
    alert("Đã thêm giỏ hàng thành công");
}