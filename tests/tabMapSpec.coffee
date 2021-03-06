describe "parseTabMap", ->
	marktab = undefined

	beforeEach ->
		marktab = new Marktab

	it "should exist", ->
		expect(marktab.parseTabMap).toBeDefined()

	it "should parse to empty tab lines", ->
		# arrange
		expected = [
			"e|-|"
			"B|-|"
			"G|-|"
			"D|-|"
			"A|-|"
			"E|-|"
		]

		# act
		actual = marktab.parseTabMap()

		# assert
		expect(actual).toEqual(expected)

	it "should parse into basic tab lines", ->
		# arrange
		input = 
			6: [1]

		expected = [
			"e|----|"
			"B|----|"
			"G|----|"
			"D|----|"
			"A|----|"
			"E|-1--|"
		]

		# act
		actual = marktab.parseTabMap(input)

		# assert
		expect(actual).toEqual(expected)
