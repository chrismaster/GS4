class CallForward < ActiveRecord::Base
  
  belongs_to :call_forward_reason
  belongs_to :sip_account
  
  validates_presence_of :sip_account
  validates_presence_of :call_forward_reason
  validates_presence_of :destination , :if  => Proc.new { |cf| cf.source.blank? }
  validates_uniqueness_of :call_forward_reason_id, :scope => [ :sip_account_id, :source ]
  
  validates_numericality_of :call_timeout,
    :if => Proc.new { |me| (CallForwardReason.where( :value => "noanswer").first && me.call_forward_reason_id == CallForwardReason.where( :value => "noanswer").first.id) },
    :only_integer => true,
    :less_than_or_equal_to => 120,
	:greater_than_or_equal_to => 1
  
  validates_inclusion_of :call_timeout,
    :in => [ nil ],
    :if => Proc.new { |me| (CallForwardReason.where( :value => "noanswer").first && me.call_forward_reason_id != CallForwardReason.where( :value => "noanswer").first.id) },
    :message => I18n.t(:reason_on_noanswer_only)
  
  # Make sure the call forward's SIP account can't be changed.
  before_validation { |cfwd|
    if cfwd.id \
    && cfwd.sip_account_id != cfwd.sip_account_id_was
      errors.add( :sip_account_id, I18n::t(:cannot_be_changed) )
    end
  }
  validate :protects_loop
  
  def reason_str
    return self.call_forward_reason ? self.call_forward_reason.value : nil
  end
  
  # Finds a call forwarding rule of a SIP account by reason and source.
  #
  def self.find_matching( sip_account, reason, source )
    return nil if ! sip_account
    return sip_account.call_forwards_for( reason, source )
  end
  def protects_loop
    if self.source == self.destination
      errors.add(:destination, I18n::t(:call_forward_loop))
    end
    if ! self.sip_account.extensions.where(:extension => self.destination).empty?
      errors.add(:destination, I18n::t(:call_forward_loop))
    end
  end
end
