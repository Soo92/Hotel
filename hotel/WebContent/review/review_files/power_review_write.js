$(function() {
    // ���� ���� 
    $('.star-list > a').on('click', function(e) {
        e.preventDefault();
        $(this).siblings('ul').show();
    });
    // ���� ����/�ݱ�
    $('.star-list ul li a').on('click', function(e) {
        e.preventDefault();
        $('.star-list > a').html($(this).html());
        $(this).parent('li').parent('ul').hide();
    });
    // ���� ���� ����
    $('.lnk-benefit').on('click', function() {
        if ($(this).hasClass('now')) {
            $(this).removeClass('now');
            $(this.hash).hide();
        } else {
            $(this).addClass('now');
            $(this.hash).show();
        }
    });
});
$('.list', '#pr-header').on('click', function(e) {
    e.preventDefault();
    $(this).siblings('.menu').toggle();
});