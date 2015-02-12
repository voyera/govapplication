$(function() {
  // Show/hide buttons next to the item to Edit or Delete Item
  $("ol.items").on('mouseenter', 'li', function() {
    $( this ).find(".item_buttons").removeClass( "invisible" );
  });
  
  $("ol.items").on('mouseleave', 'li', function() {
    $( this ).find(".item_buttons").addClass( "invisible" );
  });
  
  //Hide Edit / Delete buttons if user clicked one of them
  $("ol.items").on('click', '.btn_item_edit, .btn_item_delete', function() {
    $( this ).parent().addClass( "invisible" );
  });

  // Show/hide add form depending on its state
  $(".item_add").find("form").addClass("hide");
  
  $(".item_add .btn_add_item").click(function(e) {
    $(this).slideUp('slow');
    $(this).parent().find("form").hide().removeClass('hide').slideDown('slow');
  });
  
  $(".item_add .btn_cancel_item").click(function(e) {
    $(this).parent().slideUp('slow');
    $(this).parent().parent().find(".btn_add_item").hide().removeClass('hide').slideDown('slow');
  });
  
  //Hide edit form if user cancels and show textual item
  $(".item_form").on('click', '.btn_cancel_item', function() {
    $(this).parent().parent().slideUp('slow');
    $(this).parent().parent().parent().find(".item_text").hide().removeClass('hide').slideDown('slow');
  });
});