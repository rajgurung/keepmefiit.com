module Blorgh
  class Comment < ApplicationRecord
    belongs_to :article
  end
end
