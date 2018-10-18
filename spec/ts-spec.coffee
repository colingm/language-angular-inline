describe "Inline Angular grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-angular-inline")

    runs ->
      grammar = atom.grammars.grammarForScopeName("ts.angular.inline")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "ts.angular.inline"
