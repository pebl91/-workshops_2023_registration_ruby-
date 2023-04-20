class ValidatePassword
    attr_reader :pass
    
    def initialize(pass)
      @pass = pass
    end
    
    def perform
      return false if pass.length < 6 || pass.length > 24
      return false unless pass =~ /[A-Z]/
      return false unless pass =~ /[a-z]/
      return false unless pass =~ /\d/
      return false unless pass =~ /[!@#$%&*+=:;?<>\[\]{}()]/
      return false if pass.chars.each_cons(3).any? { |a, b, c| a == b && b == c }
      
      true
    end
  end
  