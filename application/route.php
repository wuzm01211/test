<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    '/'=>'index',
    '__miss__'=>'run_info/miss',
    'admin/index'=>'app/admin/index/index',
    'admin/test/:id/:name'=>'app/admin/index/test',
    'admin/type/index'=>'admin/type/index',
    'admin/type/add'=>'admin/type/add',
    'admin/type/set_type_cache'=>'admin/type/setTypeCache',
];
