<?php

include 'simple_html_dom.php';
$html = file_get_html('https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_base_stats_(Generation_I)');
$html2 = file_get_html('https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_index_number_(Generation_I)');

$txt = '';

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
                $txt .= 'HPBase[' . $j . '] =' . strip_tags($td) . PHP_EOL;
                break;
        
            case 5;
                $txt .= 'ABase[' . $j . '] =' . strip_tags($td) . PHP_EOL;
                break;
        
            case 6;
                $txt .= 'DBase[' . $j . '] =' . strip_tags($td) . PHP_EOL;
                break;
        
            case 7;
                $txt .= 'SpeedBase[' . $j . '] =' . strip_tags($td) . PHP_EOL;
                break;
        
            case 8;
                $txt .= 'SpecialBase[' . $j . '] =' . strip_tags($td) . PHP_EOL;
                break;
            
            default:
        }
        $i++;
    }
}
file_put_contents('lua.txt', $txt);