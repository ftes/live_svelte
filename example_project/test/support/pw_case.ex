defmodule ExampleWeb.PWCase do
  @moduledoc """
  Case for the Playwright port of the Wallaby E2E tests (test/e2e_pw).
  Run with: mix test --only e2e_pw
  """
  use ExUnit.CaseTemplate

  using opts do
    quote do
      use Playwright.Case, unquote(opts)

      @moduletag :e2e_pw
    end
  end
end
