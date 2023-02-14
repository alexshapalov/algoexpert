class Person:
	def __init__(self, name: str, email: str):
		self.name = name
		self.email = email

	def __str__(self) -> str:
		return f"{self.name}, {self.email}"


def main() -> None:
	person1 = Person(name="Alex", email="as@emal.com")
	person2 = Person(name="Alex", email="as@emal.com")
	person3 = Person(name="Alex", email="as@emal.com")

	print(f"{person1}, {person2}, {person3}")

if __name__ == "__main__":
	main()
