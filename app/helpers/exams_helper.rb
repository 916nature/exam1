module ExamsHelper
  def choose_index_or_edit_or_new
    if action_name == 'index' || action_name == 'confirm'
      confirm_exams_path
    elsif action_name == 'new' || action_name == 'confirm'
      confirm_exams_path
    elsif action_name == 'edit'
      exam_path
    end
  end
end
