"""
This module serves as a basic math utility demo for GitHub Actions.
"""

# Global constants must be UPPERCASE
LIMIT = 10

def calculate_sum(value):
    """
    Increments the provided value by the global limit.

    Args:
        value (int): The starting numeric value.

    Returns:
        int: The sum of the value and the global limit.
    """
    total = value + LIMIT
    return total

if __name__ == "__main__":
    print(calculate_sum(5))
