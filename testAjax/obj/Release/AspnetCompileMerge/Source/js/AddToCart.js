﻿let loadCartNotify = () => {
    let cart_notify = document.querySelector("#cartList_btn .notify")
    if (cart_notify == null)
        return
    let array = MyCart.get();
    if (array.length == 0) {
        if (!cart_notify.classList.contains("invisible"))
            cart_notify.classList.add("invisible")
    }
    else {
        if (cart_notify.classList.contains("invisible"))
            cart_notify.classList.remove("invisible")
        cart_notify.textContent = array.length;
    }
}
class MyCart {
    static get = () => {
        let name = "myLocalCart";
        let carts = []
        if (localStorage.getItem(name) != null && localStorage.getItem(name).length > 0) {
            carts = JSON.parse(localStorage.getItem(name))
        }
        return carts;
    }

    static add = function(_productID, _quantity) {
        let name = "myLocalCart";
        let carts = [];
        carts = this.get()
        let check = carts.find(item => item.ID == _productID)
        console.log(check)
        if (!check) {
            carts.push({
                ID: _productID,
                quantity: _quantity
            })
            callToast("Đã thêm sản phẩm vào giỏ hàng ", "success")
        }
        else {
            check.quantity = _quantity;
            callToast("Sản phẩm đã có trong giỏ hàng của bạn", "warning")
        }
        localStorage.setItem(name, JSON.stringify(carts))
        loadCartNotify()
    }

    static removeItem = (_productID) => {
        let name = "myLocalCart";
        let carts = []
        if (localStorage.getItem(name) == null || localStorage.getItem(name).length == 0) { 
            return;
        }
        carts = JSON.parse(localStorage.getItem(name))
        let myItem = carts.find(item => item.ID == _productID)
        let index = carts.indexOf(myItem)
        if(index != -1)
            carts.splice(carts.indexOf(myItem), 1)
        callToast("Đã xóa sản phẩm khỏi giỏ hàng", "success")
        localStorage.setItem(name, JSON.stringify(carts))
        loadCartNotify()
    }

    static update = (_productID, _quantity) => {
        let name = "myLocalCart";
        let carts = []
        if (localStorage.getItem(name) == null || localStorage.getItem(name).length == 0) {
            return;
        }
        carts = JSON.parse(localStorage.getItem(name))
        let index = carts.find(item => item.ID == _productID)
        if (index) {
                index.quantity = _quantity
        }
        localStorage.setItem(name, JSON.stringify(carts))
    }
}