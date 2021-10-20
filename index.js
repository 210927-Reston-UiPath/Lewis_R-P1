function AddToCollection (name) {
    debugger; 
   // alert("you wanna buy " + name); before the let rows, had this as alert, popping up window telling cst "you wanna buy"
    let cart = document.querySelector('#cart tbody');
    let newItem = cart.insertRow();

    let itemName = newItem.insertCell(0);
    itemName.innerHTML = name; 

    let elementID = '#' + name.replace(' ', '');

    let itemPrice = newItem.insertCell(1);
    itemPrice.innerHTML = document.querySelector(elementID + ' .price').innerHTML;

    let itemQuantity = newItem.insertCell(2)
    itemQuantity.innerHTML = document.querySelector(elementID + ' td .quantity').value;

    // resets the input value so the quantity of the original order doesn't 'stick'
    document.querySelector(elementID + ' td .quantity').value = ' ';
}
function CompleteOrder()
{
    document.querySelectorAll('#cart tbody tr').foreach(row => row.remove());
    alert("Thank You For Your Purchase!!! ( ^ w^)/ ")
}

