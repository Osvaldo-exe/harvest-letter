function inventory_has(item) {
    return ds_list_find_index(obj_inventory.items, item) != -1;
}

function inventory_add(item) {
    if (!inventory_has(item)) {
        ds_list_add(obj_inventory.items, item);
    }
}