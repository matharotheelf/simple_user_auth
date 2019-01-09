require "user"

describe User do
  it "returns nil if user doesn't exist" do
    expect(User.authenticate("fishmonger","secretpassword")).to eq nil
  end
end

describe User do
  it "returns nil if user exist's but password does not" do
    User.create(email: "fishmonger@nerd.com", password: "nerd")
    expect(User.authenticate("fishmonger@nerd.com","secretpassword")).to eq nil
  end
end
