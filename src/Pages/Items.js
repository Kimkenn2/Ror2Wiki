import React, {useEffect, useState} from "react";

function ItemsPage() {
const backend = "http://127.0.0.1:3000/items"

const [items, setItems] = useState([])

useEffect(() => {
    fetch(backend)
    .then((resp => resp.json()))
    .then((itemData) => setItems(itemData))
}, [])
    return(
        <div class="ItemsPage">
            
        </div>
    )
}

export default ItemsPage