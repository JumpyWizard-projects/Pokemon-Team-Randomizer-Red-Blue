<?php
include 'simple_html_dom.php';
$html = file_get_html('https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_base_stats_(Generation_I)');
$html2 = file_get_html('https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_index_number_(Generation_I)');

foreach($html2->find('tr') as $tr){
    $i = 1;
    if (isset($key) && isset($value)){
        $array[$key] = $value;
    }
    foreach($tr->find('td') as $td){
        if ($i === 2){
            $key = intval(strip_tags($td));
        }elseif($i === 3){
            foreach($td->find('img') as $img){
                $value = $img->src;
            }
        }
        $i++;
    }
}

function returnj($td, $array){
    foreach ($array as $key => $value){
        if ($td === $value){
            return $key;
        }
    }
}

foreach ($html->find('tr') as $tr) {
    $i = 1;
    foreach ($tr->find('td') as $td){
        switch($i){
            case 2:
                foreach($td->find('img') as $img){
                    $j = returnj($img->src, $array);
                }
                break;
            case 4:
                file_put_contents('lua.txt', 'HPBase[' . $j . '] =' . strip_tags($td) . PHP_EOL, FILE_APPEND);
                break;
        
            case 5;
                file_put_contents('lua.txt', 'ABase[' . $j . '] =' . strip_tags($td) . PHP_EOL, FILE_APPEND);
                break;
        
            case 6;
                file_put_contents('lua.txt', 'DBase[' . $j . '] =' . strip_tags($td) . PHP_EOL, FILE_APPEND);
                break;
        
            case 7;
                file_put_contents('lua.txt', 'SpeedBase[' . $j . '] =' . strip_tags($td) . PHP_EOL, FILE_APPEND);
                break;
        
            case 8;
                file_put_contents('lua.txt', 'SpecialBase[' . $j . '] =' . strip_tags($td) . PHP_EOL, FILE_APPEND);
                break;
            
            default:
        }
        $i++;
    }
}
