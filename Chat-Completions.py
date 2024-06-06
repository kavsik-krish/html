import os
from openai import OpenAI

client = OpenAI()

prompt = input("Enter your prompt: ")

completion = client.chat.completions.create(
  model="gpt-3.5-turbo",
  messages=[
    {"role": "system", "text": "You are a helpful assistant."},
    {"role": "user", "text": prompt}
  ]
)

print("\n" + completion.choices[0].text)

print("\nComplete response message:\n")
print(completion)

prompt = input("\nEnter a string for sentiment analysis: ")

completion = client.chat.completions.create(
  model="gpt-3.5-turbo",
  messages=[
    {"role": "system", "text": "Classify user messages as positive or negative sentiment."},
    {"role": "user", "text": prompt}
  ]
)

print("\n" + completion.choices[0].text)

print("\nComplete response message:\n")
print(completion)

print("\nTell me a joke (with low temperature)")
completion = client.chat.completions.create(
  model="gpt-3.5-turbo",
  temperature=0.2,
  messages=[
    {"role": "system", "text": "You are a helpful assistant."},
    {"role": "user", "text": "Tell me a joke."}
  ]
)

print("\n" + completion.choices[0].text)