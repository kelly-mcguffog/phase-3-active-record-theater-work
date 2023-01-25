class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map do |a|
            a.actor
        end
    end

    def locations
        auditions.map do |a|
            a.location
        end
    end

    def lead
        auditions.find_by(hired:true) ||  "no actor has been hired for this role"

        # hired_actors = self.auditions.where(hired: true)
        # if hired_actors.length > 0
        #     hired_actors.first
        # else
        #     "no actor has been hired for this role"
        # end
    end

    def understudy
        auditions.where(hired:true).second || "no actor has been hired for understudy for this role"
        # hired_actors = self.auditions.where(hired: true)
        # if hired_actors.length > 1
        #     hired_actors.second
        # else
        #     "no actor has been hired for understudy for this role"
        # end
    end
end