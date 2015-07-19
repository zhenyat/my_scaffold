module ApplicationHelper
  # Selects a status mark to be displayed
  def status_mark status
    if status == 'active' || status == true
      image_tag('admin/check_mark.png', size: '12x15', alt: 'Active')
    else
      image_tag('admin/minus_mark.png', size: '12x15', alt: 'Archived')
    end
  end
end
