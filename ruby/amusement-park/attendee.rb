class Attendee
  def initialize(height)
    @height = height
    @pass_id = nil
  end

  attr_reader :height

  def pass_id
    @pass_id unless @pass_id.nil?
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
