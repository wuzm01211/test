<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件

/**
 * @param $data 类型数据 数组
 * @return bool 写入文件成功返回true失败返回false
 */
function set_type_file($data)
{
    if(is_array($data)){
        return false;
    }
    $basedir = dirname(__FILE__).'/common';
    if(!file_exists($basedir)){
        mkdir($basedir,0777,true);
    }
    $file =$basedir.'/type_cache.json';
    $content = json_encode($data);
    if(file_put_contents($file,$content)){
        return true;
    }else{
        return false;
    }
}

function get_type_cache($pid=0)
{
    $file = dirname(__FILE__).'/common'.'/type_cache.json';
    if(!file_exists($file)){
        return false;
    }else{
        $type_json = file_get_contents($file);
        $type_arr = json_decode($type_json,1);
        if(!$pid){
            return $type_arr;
        }else{
            for($i=0;$i<count($type_arr);$i++){
                if($type_arr[$i]['']);
            }
        }
    }
}