$(document).on 'page:change', ->
  $('#trip_start_date').datetimepicker format: 'YYYY-MM-DD'
  $('#trip_end_date').datetimepicker format: 'YYYY-MM-DD'
  $('#event_date').datetimepicker format: 'YYYY-MM-DD'
  $('#event_time').datetimepicker format: 'LT'

  dataConfirmModal.setDefaults
  title: 'Are you sure?',
  commit: 'Delete',
  cancel: 'Cancel'
