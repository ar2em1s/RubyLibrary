# frozen_string_literal: true

# Validation class that raises error if validation has been failed
class Validator
  def self.validate_class(expected_class:, instance_class:, error_class:, message: '')
    raise error_class, message unless expected_class == instance_class
  end

  def self.validate_class_or_nil(expected_class:, instance_class:, error_class:, message: '')
    raise error_class, message unless [expected_class, NilClass].include?(instance_class)
  end

  def self.validate_non_empty_string(string:, error_class:, message: '')
    raise error_class, message if string.empty?
  end

  def self.validate_positive_integer(number:, error_class:, message: '')
    raise error_class, message if number <= 0
  end
end