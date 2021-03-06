describe "parseVariable", ->
	marktab = undefined

	beforeEach ->
		marktab = new Marktab

	it "Should exist", ->
		# assert
		expect(marktab.setVariable).toBeDefined()
		expect(marktab.parseVariable).toBeDefined()

	it "Should convert chord to json", ->
		# arrange
		variableName = "myVar"
		variable = variableName + ": (1:1 2:2)"
		marktab.setVariable(variable)

		# act
		result = marktab.parseVariable variableName

		# assert
		expect(result).toEqual({1:[1], 2:[2]})

	it "Should convert riff to json", ->
		# arrange
		variableName = "myVar"
		variable = variableName + ": [1:0 2:2]"
		marktab.setVariable(variable)
		expected = 
			1:[0]
			2:[undefined,2]

		# act
		result = marktab.parseVariable variableName

		# assert
		expect(result).toEqual(expected)		