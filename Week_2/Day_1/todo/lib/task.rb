class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now
    end

    def completed?
    	@complete
    end

    def complete!
    	@complete = true
    end

    def makeincomplete!
    	@complete = false
    end

    def update_content!(new_content)
    	@content = new_content
	end

end