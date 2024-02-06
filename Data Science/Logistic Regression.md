Logistic Regression is a specific type of Generalized Linear Model (GLM), extending the principles of regular Linear Models. Unlike [[Linear Regression]], where the dependent variable is continuous, Logistic Regression is used when the dependent variable is binary, representing outcomes such as 0 or 1, True or False, etc. The logistic regression model applies the `logit` function to transform the linear combination of input features, restricting the predicted values to the range of 0 to 1, which can be interpreted as probabilities. ^84362c

The `logit` function [[#^934f5c]]  is employed to map the linear combination of input features onto the S-shaped logistic curve, allowing the model's output to span the entire real number line (-∞ to +∞). This transformation is crucial for predicting probabilities and making decisions based on a threshold, typically 0.5. In summary, Logistic Regression is well-suited for binary classification problems where the goal is to predict the probability of an instance belonging to a particular class.
$$
Logit(P) = \ln(\frac{P}{1-P})
$$
^934f5c
