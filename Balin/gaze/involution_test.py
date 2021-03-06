#! /usr/bin/env python3
# coding=utf-8

import torch
import numpy as np
import matplotlib.pyplot as plt
from involution.involution_cuda import involution
# from involution.involution_naive import involution

if __name__ == "__main__":
    ## Involution
    stride = 1
    midchannel = 7
    inputchannel = 32
    batchsize = 8
    device = torch.device('cuda', 0)

    if torch.cuda.is_available():
        input = torch.randn(batchsize, inputchannel, 4, 4).cuda(device)
        conv2 = involution(inputchannel, midchannel, stride).cuda(device)
    else:
        input = torch.randn(batchsize, inputchannel, 4, 4)
        conv2 = involution(inputchannel, midchannel, stride)

    out = conv2(input)
    print(out)
    print(out.shape)