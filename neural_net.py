import math
import random

class sigmoid_n(object):
    def __init__(self, size, seed=1):
        #generate the weights
        random.seed(seed)
        self.weights=[]
        for i in range(0, size):
            self.weights.append(random.gauss(0, 0.5))
        self.bias = 0

    def feed_forward(self, inputs):
        if len(self.weights) != len(inputs):
            return None

        hidden=[]

        for i in range(0,len(inputs)):
            hidden.append(self.weights[i] * inputs[i])

        hidden_sum=0

        for i in hidden:
            hidden_sum += i

        biased = hidden_sum + self.bias

        output = self.activation(biased)

        return output

    def activation(self, input):
        return 1/(1+math.exp(-input))

class network(object):
    def __init__(self, shape):
        self.network=[]
        self.n_inputs=shape[0]
        h_shape=shape[1:]
        last=shape[0]
        for i in h_shape:
            current=[]
            for n in range(i):
                current.append(sigmoid_n(last))
            self.network.append(current)
            last=i

    def feed_forward(self, inputs):
        if len(inputs) != self.n_inputs:
            return None

        for layer in self.network:
            f_inputs=[]
            for n in layer:
                f_inputs.append(n.feed_forward(inputs))
            inputs=f_inputs
        return inputs

    def train(self, data):
        pass
        
n = sigmoid_n(3)
print(n.feed_forward([1,1,1]))
