# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in Dart: insufficient error handling in asynchronous operations.  The `bug.dart` file shows a function that fetches data from a network API but lacks comprehensive exception handling.  The `bugSolution.dart` file provides a more robust solution.

## Problem

The original code only handles HTTP errors explicitly.  Other exceptions (e.g., socket exceptions, timeouts) are silently caught by the `catch (e)` block, potentially hiding important error information. This is bad practice and makes debugging difficult. 

## Solution

The improved code introduces more specific exception handling and provides a better approach to reporting errors to the user or logging them for debugging. 

## How to Run

1. Clone this repository.
2.  Run the examples using the Dart CLI (dart bug.dart and dart bugSolution.dart)