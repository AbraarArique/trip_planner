$(document).on('page:change', function(){
  $('#trip_start_date').datetimepicker({ format: 'YYYY-MM-DD' });
  $('#trip_end_date').datetimepicker({ format: 'YYYY-MM-DD' });

  dataConfirmModal.setDefaults({
  title: 'Are you sure?',
  commit: 'Delete',
  cancel: 'Cancel'
});
});
