function AddToCollection (name) {
  debugger; 

  let cart = document.querySelector('#cart tbody');

  let newItem = cart.insertRow();

  let itemName = newItem.insertCell(0);
  itemName.innerHTML = name; 

  let elementID = '#' + name.replace(' ', '');

  let itemPrice = newItem.insertCell(1);
  itemPrice.innerHTML = document.querySelector(elementID + ' .price').innerHTML;

  let itemQuantity = newItem.insertCell(2)
  itemQuantity.innerHTML = document.querySelector(elementID + ' td .quantity').value;

  let itemSubTotal = newItem.insertCell(3)
  itemSubTotal.innerHTML = '$' + itemPrice.innerHTML.replace('$', '')*itemQuantity.innerHTML;

  document.querySelector(elementID + ' td .quantity').value = '';

  let Total = 0; 
  document.querySelectorAll('#cart tbody tr').forEach(row => {
    Total = Total + parseInt(row.cells[3].innerHTML.replace('$',''));
  });
  document.querySelector('#Total').innerHTML = ('$') + Total;
  }

function CompleteOrder()
{
  document.querySelectorAll('#cart tbody tr').forEach(row => row.remove());
  document.querySelector('#Total').innerHTML = ('');
  alert("Thank You For Your Purchase!!! ( ^ w^)/ ")
}