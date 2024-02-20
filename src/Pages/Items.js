import React, {useEffect, useState} from "react";
import Entity from "../components/Entity"

function ItemsPage() {
const backend = "http://127.0.0.1:3000/items"

const [items, setItems] = useState([])

useEffect(() => {
    fetch(backend)
    .then((resp => resp.json()))
    .then((itemData) => setItems(itemData))
}, [])

const renderedItems = (<Entity items= { items }/>)

    return(
        <div class="ItemsPage">
            {renderedItems}
        </div>
    )
}

export default ItemsPage