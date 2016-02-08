module Dry
  module Logic
    class Result::Set < Result::Multi
      def to_ary
        failed_rules = failures.map { |el| el.to_ary }

        if name
          [:input, [name, input, failed_rules]]
        else
          [:input, [input, failed_rules]]
        end
      end
    end
  end
end
