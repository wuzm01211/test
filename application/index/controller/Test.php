<?php
namespace app\index\controller;

class Test
{
    public function read($name,$id,$content)
    {
        echo $name.'----'.$id.'----'.$content;
    }
}
