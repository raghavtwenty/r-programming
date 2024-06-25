# Filename: _060_hyper_realworld.R
# Title: Hypergeometric Distribution Example - Number of Defective Items in a Sample
# Author: Raghava | GitHub: @raghavtwenty
# Date Created: June 25, 2024 | Last Updated: June 25, 2024
# Language: R | Version: 4.4.0

# PROBLEM

# We consider a real-world scenario where we have a batch of 100 items, of which 20 are defective.
# We randomly sample 10 items without replacement, and we want to find the distribution
# of the number of defective items in the sample.


# Parameters for the hypergeometric distribution
total_items = 100        # Total number of items
defective_items = 20     # Number of defective items
sample_size = 10         # Sample size

# Number of samples to generate
num_samples = 1000

# Generate random number of defective items in the sample using the hypergeometric distribution
num_defective = rhyper(num_samples, defective_items, total_items - defective_items, sample_size)

# Display the first few generated number of defective items
print(head(num_defective))

# Plot the histogram of the generated number of defective items
hist(num_defective,
    breaks = 10,
    col = "lightblue",
    border = "white",
    main = "Hypergeometric Distribution of Defective Items in a Sample of 10",
    xlab = "Number of Defective Items",
    ylab = "Frequency"
)

# Add the theoretical density line
x_vals = 0:sample_size
points(x_vals,
       dhyper(x_vals, m = defective_items, n = total_items - defective_items, k = sample_size) * num_samples,
    col = "red",
    pch = 16
)
