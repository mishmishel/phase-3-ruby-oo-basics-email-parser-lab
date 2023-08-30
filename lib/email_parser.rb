# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    # Split the input string into an array of email fragments
    # using both commas and whitespace as delimiters
    email_fragments = emails.split(/[, ]/)
    
    # Remove any empty strings from the array
    email_fragments.reject! { |fragment| fragment.empty? }
    
    # Convert the array to a set to keep only unique email addresses
    unique_emails = email_fragments.uniq
    
    unique_emails
  end

  private

  attr_reader :emails
end

# Example usage
email_string = "john@example.com, jane@example.com, john@example.com mary@example.com"
parser = EmailAddressParser.new(email_string)
unique_emails = parser.parse
puts unique_emails

