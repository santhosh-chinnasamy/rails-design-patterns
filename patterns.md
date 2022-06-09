# Design Patterns ?

Design patterns are some of the best practices that you should follow while composing your application’s code architecture to enhance readability and be able to maintain it better in the future. Design patterns also help reduce resource leaks and common mistakes since you must follow a pre-tested style of designing your codebase.

Design patterns may be viewed as a structured approach to computer programming intermediate between the levels of a programming paradigm and a concrete algorithm.

# Why use design patterns?

- faster development
- easier maintenance
- easier testing
- more readable and self-documenting

# rails design patterns

- Services
- Form Objects
- Presenter
- Query
- Observer
- Builder
- Decorator
- Interactor
- Policy
- Value

## Services

The service design pattern breaks down a program into its functional constituents. Each service object completes one task, such as sending reset password emails, or creating a new user.

[refer UserService](app/services/user_service.rb)

## Form Objects

The form design pattern encapsulates the logic related to data validation and persistence into a single unit. As a result, it can often separate the logic from the views and make the form unit reusable throughout the codebase.

[refer UserForm](app/forms/user_form.rb)

## Presenter

The presenter design pattern is used to separate the logic from the view.

[refer UserPresenter](app/presenters/user_presenter.rb)

### Reference

- [https://scoutapm.com/blog/rails-design-patterns#h_61620597268511623876237034](https://scoutapm.com/blog/rails-design-patterns#h_61620597268511623876237034)
- [https://longliveruby.com/articles/rails-design-patterns-the-big-picture](https://longliveruby.com/articles/rails-design-patterns-the-big-picture)
