class Startup
    attr_reader :name, :founder, :domain, :domains, :investors, :big_investors
    attr_accessor :pivot, :sign_contract, :num_founding_rounds, :total_funds 
    @@all = []

        def initialize(name)
            @name = name
        end
    
        def find_by_founder
            if @name == name.startup_founder.first
                @name
            end
        end
    
        def domains
            self.all  
        end 
        
        
end
    
