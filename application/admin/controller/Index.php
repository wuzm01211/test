<?php
namespace app\admin\controller;

use think\Controller;

class Index extends controller
{
    public function index()
    {
        return view();
    }

    public function test($id,$name)
    {
        return json(['id'=>$id,'name'=>$name]);
    }
}
