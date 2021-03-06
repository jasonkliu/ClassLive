class User < ActiveRecord::Base
  require 'net/ldap'

  # Associations

  # Validations
  validates_uniqueness_of :email, :message => "Conflicting email address."

  # Callbacks (ONLY works on the Yale Network)
  after_create :populateLDAP

  has_many :messages, primary_key: "netid", foreign_key: "netid"

  # Accessors
  def name
    self.fname.capitalize + " " + self.lname.capitalize
  end


protected

  #populate contact fields from LDAP
  def populateLDAP

    #quit if no email or netid to work with
    self.email ||= ''
    return if !self.email.include?('@yale.edu') && !self.netid

    begin
      ldap = Net::LDAP.new( :host =>"directory.yale.edu" , :port =>"389" )

      #set e filter
      if !self.email.blank?
        f = Net::LDAP::Filter.eq('mail', self.email)
      else #netid
        f = Net::LDAP::Filter.eq('uid', self.netid)
      end

      b = 'ou=People,o=yale.edu'
      p = ldap.search(:base => b, :filter => f, :return_result => true).first

    rescue Exception => e
          logger.debug :text => e
          logger.debug :text => "*** ERROR with LDAP"
          guessFromEmail
    end

    self.netid = ( p['uid'] ? p['uid'][0] : '' )
    self.fname = ( p['knownAs'] ? p['knownAs'][0] : '' )
    if self.fname.blank?
      self.fname = ( p['givenname'] ? p['givenname'][0] : '' )
    end
    self.lname = ( p['sn'] ? p['sn'][0] : '' )
    self.email = ( p['mail'] ? p['mail'][0] : '' )
    self.year = ( p['class'] ? p['class'][0].to_i : 0 )
    self.college = ( p['college'] ? p['college'][0] : '' )
    self.save!

  end

  # not a yale email, just make best guess at it
  def guessFromEmail
    name = self.email[ /[^@]+/ ]
    return false if !name
    name = name.split( "." )

    self.fname = name[0].downcase
    self.lname = name[1].downcase || ''
    self.save
  end

end
