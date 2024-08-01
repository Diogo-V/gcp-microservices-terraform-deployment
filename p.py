import matplotlib.pyplot as plt


c = [1, 5, 10, 20, 50, 100]
average = [200, 330, 538, 933, 2319, 13497]  # ms

# Plot me a graph using c as x and average as y

# add title and labels
plt.title('Average duration of requests per concurrent requests [1000 total]')
plt.xlabel('Concurrent requests')
plt.ylabel('Time (ms)')
plt.plot(c, average)
plt.savefig('p.png')