$(function() {
    // 별점 열기 
    $('.star-list > a').on('click', function(e) {
        e.preventDefault();
        $(this).siblings('ul').show();
    });
    // 별점 선택/닫기
    $('.star-list ul li a').on('click', function(e) {
        e.preventDefault();
        $('.star-list > a').html($(this).html());
        $(this).parent('li').parent('ul').hide();
    });
    // 리뷰 혜택 열기
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