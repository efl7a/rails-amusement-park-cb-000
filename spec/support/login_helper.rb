module LoginHelper

  def visit_signup
    visit '/'
    click_link('Sign Up')
  end

  def user_signup
    # fill_in("user[name]", :with => "Amy Poehler")
    # fill_in("user[height]", :with => "58")
    # fill_in("user[happiness]", :with => "3")
    # fill_in("user[nausea]", :with => "2")
    # fill_in("user[tickets]", :with => "15")
    # fill_in("user[password]", :with => "password")
    fill_in("user_name", :with => "Amy Poehler")
    fill_in("user_height", :with => "58")
    fill_in("user_happiness", :with => "3")
    fill_in("user_nausea", :with => "2")
    fill_in("user_tickets", :with => "15")
    fill_in("user_password", :with => "password")
    fill_in("user_password_confirmation", :with => "password")
    click_button('Create User')
  end

  def visit_signin
    visit '/'
    click_link('Sign In')
  end

  def user_login
    @mindy = User.create(
      name: "Mindy",
      password: "password",
      happiness: 3,
      nausea: 2,
      tickets: 10,
      height: 50
    )
    # fill_in("user[name]", :with => "Mindy")
    # fill_in("user[password]", :with => "password")
    fill_in("name", :with => "Mindy")
    fill_in("password", :with => "password")
    click_button('Sign In')
  end

  def admin_signup
    # fill_in("user[name]", :with => "Walt Disney")
    # fill_in("user[height]", :with => "58")
    # fill_in("user[happiness]", :with => "3")
    # fill_in("user[nausea]", :with => "2")
    # fill_in("user[tickets]", :with => "15")
    # fill_in("user[password]", :with => "password")
    # find(:css, "#user_admin").set(true)
    fill_in("user_name", :with => "Walt Disney")
    fill_in("user_height", :with => "58")
    fill_in("user_happiness", :with => "3")
    fill_in("user_nausea", :with => "2")
    fill_in("user_tickets", :with => "15")
    fill_in("user_password", :with => "password")
    fill_in("user_password_confirmation", :with => "password")
    find(:css, "#user_admin").set(true)

    click_button('Create User')
  end

  def admin_login
    @mindy = User.create(
      name: "Mindy",
      password: "password",
      happiness: 3,
      nausea: 2,
      tickets: 10,
      height: 50
    )
    @walt = User.create(
        name: "Walt Disney",
        password: "password",
        happiness: 3,
        nausea: 2,
        tickets: 15,
        height: 58,
        admin: true
      )
    # fill_in("user[name]", :with => "Walt Disney")
    # fill_in("user[password]", :with => "password")
    fill_in("name", :with => "Walt Disney")
    fill_in("password", :with => "password")
    click_button('Sign In')
  end

end
