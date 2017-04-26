/**
 * Created by Administrator on 2017/4/1.
 */
$('.admin-panel-body>ul>li>a').click(function(){
    $('.admin-panel-body>ul>li>a').each(function(){
        $(this).removeClass('menu-active');
    });
    $(this).addClass('menu-active');
});

$('.admin-panel h4').click(function(){
    $('.admin-panel h4').each(function(){
        $(this).removeClass('h4-active');
    });
    $(this).addClass('h4-active');
});