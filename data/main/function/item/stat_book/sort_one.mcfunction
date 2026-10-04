$execute unless data storage enriched:tracking storage[{obj:"$(obj)"}] run return 0
$function main:backend/sort/search {type: "storage", target: "enriched:tracking", targetPath: "storage[{obj:\"$(obj)\"}].values", attribute: ".value", scale: 1}
$function main:item/stat_book/copy_one {obj:"$(obj)"}
