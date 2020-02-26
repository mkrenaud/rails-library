# frozen_string_literal: true

module LocationsHelper
  def splitter(location)
    return location.split(',').map(&:to_f)
  end
end
