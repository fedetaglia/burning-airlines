require "spec_helper"

describe FlightPolicy do 
    subject { FlightPolicy.new(user, flight) }

    let(:flight) { FactoryGirl.create(:flight) }

    context "for a non-admin user" do
        let(:user) { FactoryGirl.create(:user) }

        it { should permit(:show)    }

        it { should_not permit(:create)  }
        it { should_not permit(:update)  }
        it { should_not permit(:edit)    }
        it { should_not permit(:destroy) }
    end

    # context "for a user" do
    #     let(:user) { FactoryGirl.create(:user) }

    #     it { should permit(:show)    }
    #     it { should permit(:create)  }
    #     it { should permit(:new)     }
    #     it { should permit(:update)  }
    #     it { should permit(:edit)    }
    #     it { should permit(:destroy) }
    # end
    
end