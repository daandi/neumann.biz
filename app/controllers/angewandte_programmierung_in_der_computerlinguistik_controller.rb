class AngewandteProgrammierungInDerComputerlinguistikController < ApplicationController
  def index
  end
  
  def i18n
        @sources = group_code_by_language_for_tag("perlutf8")
  end

  def modules

  end

  def object
  end
end
